---@meta os

---The standard Lua `os` library as OpenComputers and OpenOS provide it.
---
---It is a global, so `require("os")` is not needed. Part of it comes from the machine
---sandbox (`clock`, `date`, `difftime`, `time`), part from OpenOS (`getenv`, `setenv`,
---`sleep`, `execute`, `exit`, `remove`, `rename`, `tmpname`). The Lua functions that
---would touch the host machine are not here at all.
---@class oslib
local os = {}

---Allows pausing a script for the specified amount of time. os.sleep consumes events but registered event handlers and threads are still
---receiving events during the sleep. Rephrased, signals will still be processed by event handlers while the sleep is active, i.e. you cannot pull signals
---that were accumulated during the sleep after it ended, since no signals will remain in the queue (or at least not all of them).
---@param seconds number # Number of seconds to pause script.
function os.sleep(seconds) end

---Returns how long the computer has been running, in seconds.
---
---This is processor time, which only advances while the machine is actually executing.
---For wall clock time since the computer was switched on use `computer.uptime`.
---@return number
function os.clock() end

---Formats a date, by default the current in-game one.
---@param format? string # A `strftime` style format. Prefix it with `!` for UTC. Defaults to `"%c"`.
---@param time? number # The timestamp to format. Defaults to now.
---@return string|table # A table instead of a string when the format is `"*t"`.
function os.date(format, time) end

---Returns the in-game time as a timestamp, by default the current one.
---@param table? table # A table with `year`, `month`, `day` and optionally `hour`, `min`, `sec`.
---@return number
function os.time(table) end

---Returns the difference between two timestamps, in seconds.
---@param t2 number
---@param t1 number
---@return number
function os.difftime(t2, t1) end

---Reads an environment variable of the current process.
---@param varname? string # The variable to read. Omit it to get the whole table, or pass `"#"` for the count.
---@return string|table|integer|nil
function os.getenv(varname) end

---Sets an environment variable of the current process.
---@param varname string|number # The variable to set.
---@param value? string|number # The new value. Pass `nil` to remove it.
---@return string|nil # The value that was set.
function os.setenv(varname, value) end

---Runs a shell command and waits for it to finish.
---@param command? string # The command line. Omit it to ask whether a shell is available.
---@return boolean # Whether the command succeeded, or whether a shell exists when called with no command.
---@return string|nil # The reason on failure.
function os.execute(command) end

---Ends the running program.
---@param code? integer|boolean # The exit code.
function os.exit(code) end

---Removes a file.
---@param path string
---@return boolean|nil # True on success, or `nil` and an error message.
---@return string|nil
function os.remove(path) end

---Renames or moves a file.
---@param oldPath string
---@param newPath string
---@return boolean|nil # True on success, or `nil` and an error message.
---@return string|nil
function os.rename(oldPath, newPath) end

---Returns a path that no file currently occupies, inside `TMPDIR` or `/tmp`.
---
---The file is not created, and the name is not reserved.
---@return string|nil # `nil` if no free name was found.
function os.tmpname() end

return os
