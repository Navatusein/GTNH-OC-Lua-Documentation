---@meta _

---A filesystem component: a hard drive, a floppy, or a RAID.
---
---Paths are absolute inside this filesystem. For everyday file access prefer the
---`filesystem` library, which works on the mounted tree instead.
---@class filesystem: BaseComponent
---@field type "filesystem"
---@field fsnode table # Internal node of the mounted filesystem.
local filesystem = {}

---Get the current label of the drive.
---@return string # The current label.
function filesystem.getLabel() end

---Set the label of the drive.
---@param value string # The new label.
---@return string # The new value, which may be truncated.
function filesystem.setLabel(value) end

---Returns whether the file system is read-only.
---@return boolean
function filesystem.isReadOnly() end

---The overall capacity of the file system, in bytes.
---@return integer
function filesystem.spaceTotal() end

---The currently used capacity of the file system, in bytes.
---@return integer
function filesystem.spaceUsed() end

---Returns whether an object exists at the specified absolute path.
---@param path string # The absolute path inside this filesystem.
---@return boolean
function filesystem.exists(path) end

---Returns the size of the object at the specified absolute path.
---@param path string # The absolute path inside this filesystem.
---@return integer # The size in bytes.
function filesystem.size(path) end

---Returns whether the object at the specified absolute path is a directory.
---@param path string # The absolute path inside this filesystem.
---@return boolean
function filesystem.isDirectory(path) end

---Returns the real world timestamp of when the object at the specified path was modified.
---@param path string # The absolute path inside this filesystem.
---@return integer # The timestamp in milliseconds.
function filesystem.lastModified(path) end

---Returns a list of names of objects in the directory at the specified absolute path.
---@param path string # The absolute path inside this filesystem.
---@return string[] # The names of the entries, directories ending in a slash.
function filesystem.list(path) end

---Creates a directory at the specified absolute path, creating parents as necessary.
---@param path string # The absolute path inside this filesystem.
---@return boolean # True on success.
function filesystem.makeDirectory(path) end

---Removes the object at the specified absolute path.
---@param path string # The absolute path inside this filesystem.
---@return boolean # True on success.
function filesystem.remove(path) end

---Renames or moves an object from one absolute path to another.
---@param from string # The path to move from.
---@param to string # The path to move to.
---@return boolean # True on success.
function filesystem.rename(from, to) end

---Opens a new file descriptor and returns its handle.
---@param path string # The absolute path inside this filesystem.
---@param mode? string # One of `"r"`, `"rb"`, `"w"`, `"wb"`, `"a"` or `"ab"`. Defaults to `"r"`.
---@return userdata # The handle of the descriptor.
function filesystem.open(path, mode) end

---Closes an open file descriptor.
---@param handle userdata # The handle of the descriptor.
function filesystem.close(handle) end

---Reads up to the specified amount of data from an open file descriptor.
---@param handle userdata # The handle of the descriptor.
---@param count integer # How many bytes to read at most.
---@return string|nil # The data read, or `nil` when EOF is reached.
function filesystem.read(handle, count) end

---Writes the specified data to an open file descriptor.
---@param handle userdata # The handle of the descriptor.
---@param value string # The data to write.
---@return boolean # True on success.
function filesystem.write(handle, value) end

---Seeks in an open file descriptor.
---@param handle userdata # The handle of the descriptor.
---@param whence string # One of `"set"`, `"cur"` or `"end"`.
---@param offset integer # The offset relative to `whence`.
---@return integer # The new pointer position.
function filesystem.seek(handle, whence, offset) end
