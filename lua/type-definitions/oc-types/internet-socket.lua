---@meta _

---Represents a basic socket with non-buffered methods.
---@class InternetSocket
---@field address string # The address the socket is connected to.
---@field port integer # The port the socket is connected to.
local InternetSocket = {}

---Reads data from the socket.
---@param count integer|nil # The number of bytes to read. If omitted, reads all available data.
---@return string|nil data # The data read from the socket, or nil if no data is available.
function InternetSocket:read(count) end

---Writes data to the socket.
---@param data string # The data to write to the socket.
---@return boolean success # True if the write succeeded, false otherwise.
function InternetSocket:write(data) end

---Closes the socket.
function InternetSocket:close() end