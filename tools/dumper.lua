--[[
  Component dumper for the GTNH-OC-Lua-Documentation project.

  Walks every component visible to this computer and writes one file per component
  type, in the same format the `dumps/` folder already uses:

    {
      ["methodName"] = "function(...):type -- description",
      ["type"] = "me_interface",
      ...
    }

  Usage:
    dumper                             dump everything into /home/dumps
    dumper --dir=/home/dumps           choose the output directory
    dumper --filter=me_interface,gpu   only these types (substring match, comma separated)
    dumper -a  / --all                 write every component, not one file per type
    dumper -l  / --list                list what is connected and exit, writing nothing
    dumper -q  / --quiet               do not print each file

  Note: shell.parse only understands values on long options, so it has to be
  `--dir=/home/dumps`; `-d=/home/dumps` would be read as a handful of one-letter flags.

  Components of the same type are compared by their method set. Identical ones are
  skipped; a genuinely different one (a GregTech battery buffer next to a regular
  machine, say) is written as <type>-2.txt, <type>-3.txt and so on.
]]

local component = require("component")
local filesystem = require("filesystem")
local shell = require("shell")

local args, options = shell.parse(...)

local outputDirectory = type(options.dir) == "string" and options.dir or "/home/dumps"
local writeAll = options.a == true or options.all == true
local listOnly = options.l == true or options.list == true
local quiet = options.q == true or options.quiet == true

---Splits the --filter option into a list of lowercase patterns.
---@return string[]|nil # nil when no filter was given.
local function parseFilters()
  local raw = options.filter

  if type(raw) ~= "string" or raw == "" then
    return nil
  end

  local filters = {}

  for part in raw:gmatch("[^,]+") do
    local trimmed = part:match("^%s*(.-)%s*$")

    if trimmed ~= "" then
      filters[#filters + 1] = trimmed:lower()
    end
  end

  return #filters > 0 and filters or nil
end

local filters = parseFilters()

---Checks a component type against the active filter list.
---@param componentType string
---@return boolean
local function isWanted(componentType)
  if filters == nil then
    return true
  end

  for _, filter in ipairs(filters) do
    if componentType:lower():find(filter, 1, true) ~= nil then
      return true
    end
  end

  return false
end

---Turns a component type into something usable as a file name.
---Types such as "GT-Data Server" contain spaces and capitals.
---@param componentType string
---@return string
local function toFileName(componentType)
  local name = componentType:lower():gsub("[^%w%-_]", "_")
  return name
end

---Reads a proxy into a plain name -> string table.
---For methods tostring() yields the documentation string, which is what we want.
---@param proxy table
---@return table<string, string>
local function readProxy(proxy)
  local data = {}

  for key, value in pairs(proxy) do
    local ok, text = pcall(tostring, value)
    data[tostring(key)] = ok and text or ("<error: " .. tostring(text) .. ">")
  end

  return data
end

---Formats a name -> string table the way the existing dumps look.
---Keys are sorted so that two dumps of the same component are diffable.
---@param data table<string, string>
---@return string
local function format(data)
  local keys = {}

  for key in pairs(data) do
    keys[#keys + 1] = key
  end

  table.sort(keys)

  local lines = {"{"}

  for _, key in ipairs(keys) do
    local value = data[key]:gsub("\\", "\\\\"):gsub('"', '\\"'):gsub("\n", "\\n")
    lines[#lines + 1] = '  ["' .. key .. '"] = "' .. value .. '",'
  end

  lines[#lines + 1] = "}"

  return table.concat(lines, "\n") .. "\n"
end

---Builds a stable signature of the member names, used to detect duplicates.
---@param data table<string, string>
---@return string
local function signature(data)
  local keys = {}

  for key in pairs(data) do
    if key ~= "address" and key ~= "slot" then
      keys[#keys + 1] = key
    end
  end

  table.sort(keys)

  return table.concat(keys, ",")
end

---@param path string
---@param contents string
---@return boolean, string|nil # false and a message when the file could not be written.
local function write(path, contents)
  local file, reason = io.open(path, "w")

  if file == nil then
    return false, tostring(reason)
  end

  file:write(contents)
  file:close()

  return true
end

local function main()
  if args[1] ~= nil then
    error("this command takes options only, see the header of the script", 0)
  end

  local components = {}

  for address, componentType in pairs(component.list()) do
    if isWanted(componentType) then
      components[#components + 1] = {address = address, type = componentType}
    end
  end

  table.sort(components, function(a, b)
    if a.type == b.type then
      return a.address < b.address
    end

    return a.type < b.type
  end)

  if #components == 0 then
    print("No matching components found.")
    return
  end

  if listOnly then
    for _, entry in ipairs(components) do
      print(entry.type .. "  " .. entry.address)
    end

    print(#components .. " component(s).")
    return
  end

  if not filesystem.exists(outputDirectory) then
    assert(filesystem.makeDirectory(outputDirectory))
  elseif not filesystem.isDirectory(outputDirectory) then
    error(outputDirectory .. " exists and is not a directory", 0)
  end

  local seen = {}
  local written = 0
  local skipped = 0
  local failed = 0

  for _, entry in ipairs(components) do
    local ok, proxy = pcall(component.proxy, entry.address)

    if not ok or proxy == nil then
      print("FAILED " .. entry.type .. " " .. entry.address .. ": " .. tostring(proxy))
      failed = failed + 1
    else
      local data = readProxy(proxy)
      local key = entry.type .. "\0" .. signature(data)
      local variants = seen[entry.type] or {}
      local duplicate = false

      for _, knownKey in ipairs(variants) do
        if knownKey == key then
          duplicate = true
          break
        end
      end

      if duplicate and not writeAll then
        skipped = skipped + 1
      else
        variants[#variants + 1] = key
        seen[entry.type] = variants

        local suffix = #variants > 1 and ("-" .. #variants) or ""
        local name = toFileName(entry.type) .. suffix .. ".txt"
        local path = filesystem.concat(outputDirectory, name)
        local ok, reason = write(path, format(data))

        if not ok then
          print("FAILED " .. name .. ": " .. tostring(reason))
          failed = failed + 1
        else
          written = written + 1

          if not quiet then
            local count = 0

            for _ in pairs(data) do
              count = count + 1
            end

            print(name .. "  (" .. count .. " members)")
          end
        end
      end
    end
  end

  print("Wrote " .. written .. " file(s) to " .. outputDirectory
    .. ", skipped " .. skipped .. " duplicate(s), " .. failed .. " failure(s).")
end

main()
