---@meta "package"

---Module loading, that is what stands behind `require`.
---
---This is the standard Lua `package` library with one OpenOS addition, `delay`. It is
---a global, so `require("package")` is not needed. Scripts mostly touch `package.path`
---to add a library directory, and `package.loaded` to force a module to be reloaded.
---@class PackageLibrary
---@field config string # The path separators this system uses, as five lines: `/`, `;`, `?`, `!`, `-`.
---@field path string # Where `require` looks. Defaults to `/lib/?.lua;/usr/lib/?.lua;/home/lib/?.lua;./?.lua` and the matching `init.lua` forms.
---@field loaded table<string, any> # Every module already loaded, keyed by name. Clearing an entry makes `require` load it again.
---@field preload table<string, function> # Loaders consulted before the path is searched.
---@field searchers function[] # The searcher functions `require` tries in order.
local package = {}

---Searches a path template for a module file.
---@param name string # The module name.
---@param path string # A template like `package.path`.
---@param sep? string # The character in the name that stands for a directory separator. Defaults to `.`.
---@param rep? string # What to replace it with. Defaults to `/`.
---@return string|nil # The path that was found, or `nil` and the list of paths tried.
---@return string|nil
function package.searchpath(name, path, sep, rep) end

---Makes a library load the rest of itself only when something is first read from it.
---
---OpenOS uses this to keep boot small: `event`, `text`, `shell` and others load a core
---file at startup and pull in their `full_*` counterpart on first use. Rarely needed in
---a user script, but it explains why a library can gain functions after the first call.
---@param lib table # The library table to put the metatable on.
---@param file string # The file to run when the library is first touched.
function package.delay(lib, file) end

return package
