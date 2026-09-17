---@meta "process"

---@class ProcessLibrary
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
---@param levelOrThread? integer|thread # How many levels up to look, or the coroutine to look up. Defaults to 1, the current process.
---@return table # A table containing the command, path, and other process data.
function process.info(levelOrThread) end

---(Deprecated) Returns information about the currently running process.
---@param levelOrThread? integer|thread # How many levels up to look, or the coroutine to look up. Defaults to 1, the current process.
---@return string, table, string # The process path, environment table, and process name.
function process.running(level) end


---Finds the process a coroutine belongs to.
---@param co? thread # The coroutine to look up. Defaults to the running one.
---@return table|nil # The process, or `nil` if the coroutine belongs to none.
function process.findProcess(co) end

---Registers a handle with a process, so that it is closed when the process ends.
---@param handle table # The handle to register, which must have a `close` method.
---@param proc? table # The process to register it with. Defaults to the current one.
---@return table # The handle that was passed in.
function process.addHandle(handle, proc) end

---Removes a handle from a process, leaving it to be closed by hand.
---@param handle table # The handle to remove.
---@param proc? table # The process to remove it from. Defaults to the current one.
---@return table|nil # The handle that was removed, or `nil` if it was not registered.
function process.removeHandle(handle, proc) end

return process
