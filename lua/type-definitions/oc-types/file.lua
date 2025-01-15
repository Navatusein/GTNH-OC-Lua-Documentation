---@meta _

---Represents a buffered socket with enhanced methods.
---@class File
local File = {}

---Closes a file stream.
function File:close() end

---Reads data from a file stream.
---@param n number # The number of bytes to read.
---@return string|nil, string # The data read, or nil and an error message.
function File:read(n) end

---Moves the file stream's position.
---@param whence string # "set", "cur", or "end".
---@param offset number|nil # The position offset. Defaults to 0.
---@return number|nil, string # The new position, or nil and an error message.
function File:seek(whence, offset) end

---Writes data to a file stream.
---@param value string # The data to write.
---@return boolean|nil, string # True on success, otherwise nil and an error message.
function File:write(value) end
