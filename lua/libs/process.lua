---@meta "process"

---@class process
local process = {}

---Loads a Lua script from the specified absolute path and sets it up as a process.
---It will be loaded with a custom environment to prevent polluting the global namespace.
---@param path string|function # The absolute path to the script or a function (since OpenOS 1.6).
---@param env table|nil # A custom environment for the script. Defaults to the global environment.
---@param init function|nil # A function executed before the main script to set up its environment.
---@param name string|nil # The process name (available in `process.running`).
---@return table # A coroutine representing the loaded process.
function process.load(path, env, init, name) end

---Returns a table containing metadata about the specified process.
---@param level number|nil # The stack level. Defaults to 1 (current process). 2 is the parent process, etc.
---@return table # A table containing the command, path, and other process data.
function process.info(level) end

---(Deprecated) Returns information about the currently running process.
---@param level number|nil # The stack level. Defaults to 1 (current process).
---@return string, table, string # The process path, environment table, and process name.
function process.running(level) end

return process
