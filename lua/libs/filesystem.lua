---@meta "filesystem"

---@class filesystem
local filesystem = {}

---Checks if autorun is enabled.
---@return boolean # True if autorun is enabled, otherwise false.
function filesystem.isAutorunEnabled() end

---Enables or disables autorun for newly mounted file systems.
---@param value boolean # True to enable, false to disable autorun.
function filesystem.setAutorunEnabled(value) end

---Gets the canonical form of the specified path.
---@param path string # The path to canonicalize.
---@return string # The canonical path.
function filesystem.canonical(path) end

---Splits a path into its canonical segments.
---@param path string # The path to split.
---@return table # A table of path segments.
function filesystem.segments(path) end

---Concatenates multiple paths into one.
---@param pathA string # The first path.
---@param pathB string # The second path.
---@vararg string # Additional paths.
---@return string # The concatenated canonical path.
function filesystem.concat(pathA, pathB, ...) end

---Gets the directory portion of a path.
---@param path string # The file path.
---@return string # The directory portion of the path.
function filesystem.path(path) end

---Gets the file name portion of a path.
---@param path string # The file path.
---@return string # The file name portion of the path.
function filesystem.name(path) end

---Gets the proxy of a file system by address or label.
---@param filter string # The file system's address or label.
---@return table|nil, string # The proxy if found, otherwise nil and an error message.
function filesystem.proxy(filter) end

---Mounts a file system at a specified path.
---@param fs table|string # The file system proxy, address, or label.
---@param path string # The mount path.
---@return boolean|nil, string # True on success, otherwise nil and an error message.
function filesystem.mount(fs, path) end

---Iterates over all mounted file systems.
---@return function # An iterator function returning file system proxies and their mount paths.
function filesystem.mounts() end

---Unmounts a file system.
---@param fsOrPath table|string # The file system proxy, address, or path.
---@return boolean # True if unmounted successfully, otherwise false.
function filesystem.umount(fsOrPath) end

---Checks if a path is a symbolic link.
---@param path string # The path to check.
---@return boolean, string|nil # True if it is a symlink, with the target path; otherwise false.
function filesystem.isLink(path) end

---Creates a symbolic link.
---@param target string # The target path.
---@param linkpath string # The link's path.
---@return boolean|nil, string # True on success, otherwise nil and an error message.
function filesystem.link(target, linkpath) end

---Gets the file system containing the specified path.
---@param path string # The path to query.
---@return table, string|nil, string # The file system proxy and mount path, or nil and an error message.
function filesystem.get(path) end

---Checks if a file or directory exists.
---@param path string # The path to check.
---@return boolean # True if it exists, otherwise false.
function filesystem.exists(path) end

---Gets the size of a file.
---@param path string # The file path.
---@return number # The file size in bytes, or 0 if it's not a file.
function filesystem.size(path) end

---Checks if a path points to a directory.
---@param path string # The path to check.
---@return boolean # True if it's a directory, otherwise false.
function filesystem.isDirectory(path) end

---Gets the last modification timestamp of a file.
---@param path string # The file path.
---@return number # The Unix timestamp of the last modification.
function filesystem.lastModified(path) end

---Lists the contents of a directory.
---@param path string # The directory path.
---@return function # An iterator over the directory's contents.
function filesystem.list(path) end

---Creates a directory and any necessary parent directories.
---@param path string # The directory path.
---@return boolean|nil, string # True on success, otherwise nil and an error message.
function filesystem.makeDirectory(path) end

---Deletes a file or directory.
---@param path string # The path to delete.
---@return boolean|nil, string # True on success, otherwise nil and an error message.
function filesystem.remove(path) end

---Renames or moves a file or directory.
---@param oldPath string # The current path.
---@param newPath string # The new path.
---@return boolean|nil, string # True on success, otherwise nil and an error message.
function filesystem.rename(oldPath, newPath) end

---Copies a file to a new location.
---@param fromPath string # The source path.
---@param toPath string # The destination path.
---@return boolean|nil, string # True on success, otherwise nil and an error message.
function filesystem.copy(fromPath, toPath) end

---Opens a file for reading or writing.
---@param path string # The file path.
---@param mode string|nil # The mode ("r", "rb", "w", etc.). Defaults to "r".
---@return File|nil, string # A file stream on success, otherwise nil and an error message.
function filesystem.open(path, mode) end

return filesystem
