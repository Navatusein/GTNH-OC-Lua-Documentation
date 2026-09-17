"""Turn an in-game dump into a LuaLS component stub.

Reads dumps/<host>/<type>.txt and renders each member as an annotated function.
The mods are inconsistent about how they write a signature, so the parser handles
"name:type", the reversed "type: name", an "optional:" prefix, alternatives spelled
"a:string OR b:table", "boolean or (nil, string)" results, and callbacks annotated
with no signature at all. Always read the result before committing it.
"""
import re, os, sys, json

PROJ = r"D:\Projects\GTNH-OC-Lua-Documentation"

TYPEMAP = {
    'number': 'number', 'string': 'string', 'boolean': 'boolean', 'bool': 'boolean',
    'table': 'table', 'userdata': 'userdata', 'address': 'string', 'nil': 'nil',
    'int': 'integer', 'array': 'table', 'float': 'number', 'double': 'number',
    'long': 'integer', 'byte': 'integer', 'short': 'integer',
}


def read_dump(path):
    src = open(path, encoding='utf-8', errors='replace').read()
    out = {}
    for m in re.finditer(r'\["([A-Za-z0-9_]+)"\]\s*=\s*"((?:[^"\\]|\\.)*)"', src):
        out[m.group(1)] = m.group(2).replace('\\"', '"').replace('\\\\', '\\')
    return out


def split_top(s, sep=','):
    """Split on sep at bracket depth zero."""
    parts, depth, cur = [], 0, ''
    for ch in s:
        if ch in '[(':
            depth += 1
        elif ch in '])':
            depth -= 1
        if ch == sep and depth == 0:
            parts.append(cur); cur = ''
        else:
            cur += ch
    if cur.strip():
        parts.append(cur)
    return parts


LUA_KEYWORDS = {'end', 'function', 'local', 'nil', 'true', 'false', 'for', 'in',
                'do', 'while', 'repeat', 'until', 'if', 'then', 'else', 'elseif',
                'return', 'break', 'and', 'or', 'not'}



def parse_sig(doc):
    """Return (overloads, description). Each overload is (args, returns)."""
    desc = ''
    for sep in (' -- ', '; ', ' – '):
        if sep in doc:
            head, desc = doc.split(sep, 1)
            break
    else:
        head = doc
    overloads = []
    for part in re.split(r'\s+OR\s+(?=function)', head):
        part = part.strip()
        if not part.startswith('function'):
            return None, doc
        rest = part[len('function'):].lstrip()
        if not rest.startswith('('):
            # the mod annotated the callback without any signature at all
            overloads.append(([], []))
            continue
        # scan to the parenthesis that closes the argument list
        depth, end = 0, None
        for i, ch in enumerate(rest):
            if ch == '(':
                depth += 1
            elif ch == ')':
                depth -= 1
                if depth == 0:
                    end = i
                    break
        if end is None:
            return None, doc
        argstr = rest[1:end]
        ret = rest[end + 1:].lstrip().lstrip(':').strip()
        args = []
        seen_bracket = False
        for raw in argstr.split(','):
            token = raw.strip()
            if '[' in token:
                seen_bracket = True
            token = token.replace('[', '').replace(']', '').strip()
            if not token:
                continue
            head_, sep_, tail_ = token.partition(':')
            if head_.strip().lower() in ('optional', 'opt') and sep_:
                seen_bracket = True
                head_, sep_, tail_ = tail_.partition(':')
            name = head_.strip()
            typ = tail_.split('=')[0].strip() if sep_ else ''
            # some mods write "type: name" instead of "name:type"
            if name.lower() in TYPEMAP and typ.lower() not in TYPEMAP:
                name, typ = typ, name
            name = name.split('(')[0].strip().strip('.')
            typ = typ or 'any'
            alt_types = []
            for t in re.split(r'\s+OR\s+|\|', typ):
                t = t.strip()
                if not t:
                    continue
                # "string OR detail:table" - the alternative carries its own name
                if ':' in t:
                    t = t.split(':')[-1].strip()
                t = TYPEMAP.get(t.lower(), t)
                if t not in alt_types:
                    alt_types.append(t)
            typ = '|'.join(alt_types)
            if not re.match(r'^[A-Za-z_][A-Za-z0-9_]*$', name) or name in LUA_KEYWORDS:
                name = 'arg%d' % (len(args) + 1)
            args.append((name, typ or 'any', seen_bracket))
        # "boolean or (nil, string)" means two results, each with two possible types
        alternatives = []
        for alt in re.split(r'\s+or\s+', ret) if ret else []:
            alt = alt.strip()
            if alt.startswith('(') and alt.endswith(')'):
                alt = alt[1:-1]
            tuple_ = [t.strip() for t in alt.split(',') if t.strip()]
            if tuple_:
                alternatives.append(tuple_)
        rets = []
        for pos in range(max((len(a) for a in alternatives), default=0)):
            types = []
            for alt in alternatives:
                t = alt[pos] if pos < len(alt) else 'nil'
                t = TYPEMAP.get(t.lower(), t)
                if t not in types:
                    types.append(t)
            rets.append('|'.join(types))
        overloads.append((args, rets))
    return overloads, desc.strip()


def render(local_name, member, doc, notes=()):
    overloads, desc = parse_sig(doc)
    lines = []
    if overloads is None:
        lines.append('---@field %s any # %s' % (member, doc))
        return '\n'.join(lines)
    for args, rets in overloads:
        block = []
        block.append('---' + (desc or 'The mod gives no description for this method.'))
        for n in notes:
            block.append('---')
            block.append('---' + n)
        for name, typ, opt in args:
            block.append('---@param %s%s %s' % (name, '?' if opt else '', typ))
        for r in rets:
            block.append('---@return ' + r)
        params = ', '.join(a[0] for a in args)
        block.append('function %s.%s(%s) end' % (local_name, member, params))
        lines.append('\n'.join(block))
    return '\n\n'.join(lines)


def generate(dump_path, class_name, local_name, header='', parents='BaseComponent', notes=()):
    data = read_dump(dump_path)
    ctype = data.get('type', class_name)
    members = {k: v for k, v in data.items() if k not in ('type', 'address', 'slot')}
    out = ['---@meta _', '']
    if header:
        out += ['---' + l for l in header.split('\n')]
    out.append('---@class %s: %s' % (class_name, parents))
    out.append('---@field type "%s"' % ctype)
    fields = {k: v for k, v in members.items() if not v.startswith('function')}
    for k, v in sorted(fields.items()):
        out.append('---@field %s table # %s' % (k, 'Provided by the mod as a table.'))
    out.append('local %s = {}' % local_name)
    out.append('')
    for k in sorted(members):
        if k in fields:
            continue
        out.append(render(local_name, k, members[k], notes))
        out.append('')
    return '\n'.join(out).rstrip('\n') + '\n'


if __name__ == '__main__':
    spec = json.load(open(sys.argv[1], encoding='utf-8'))
    for entry in spec:
        text = generate(
            os.path.join(PROJ, 'dumps', entry['dump']),
            entry['class'], entry['local'],
            entry.get('header', ''), entry.get('parents', 'BaseComponent'),
            entry.get('notes', []))
        path = os.path.join(PROJ, 'lua', 'components', entry['file'])
        open(path, 'w', encoding='utf-8').write(text)
        print('wrote', entry['file'])
