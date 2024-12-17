---@meta "shell"

---@class shell
local shell = {}

---Gets the value of a specified alias.
---@param alias string # The alias name to retrieve.
---@return string|nil # The value of the alias, or nil if it does not exist.
function shell.getAlias(alias) end

---Defines or updates an alias. Pass `nil` to remove an alias.
---@param alias string # The alias name to define or update.
---@param value string|nil # The value for the alias, or nil to remove it.
function shell.setAlias(alias, value) end

---Returns an iterator over all known aliases.
---@return function # An iterator function for aliases.
function shell.aliases() end

---Gets the current working directory.
---@return string # The path to the current working directory.
function shell.getWorkingDirectory() end

---Sets the current working directory.
---@param dir string # The new working directory path.
function shell.setWorkingDirectory(dir) end

---Gets the search path used by `shell.resolve`.
---@return string # The search path as a colon-separated string.
function shell.getPath() end

---Sets the search path. This replaces the existing paths.
---@param value string # The new search path as a colon-separated string.
function shell.setPath(value) end

---Resolves a path, optionally adding an extension if none is found.
---@param path string # The path or file name to resolve.
---@param ext string|nil # An optional extension to add if the file is not found.
---@return string # The resolved path.
function shell.resolve(path, ext) end

---Executes a command in the shell environment.
---@param command string # The command to execute.
---@param env? table # The environment table for the command.
---@vararg any # Additional arguments passed to the program.
---@return boolean, ... # True on success, followed by the command's return values, or false and an error message on failure.
function shell.execute(command, env, ...) end

---Parses arguments into options and parameters.
---@vararg string # The arguments to parse.
---@return table, table # Two tables: the first with normal parameters, the second with options.
function shell.parse(...) end

return shell
