---@meta _

---Represents a buffered socket with enhanced methods.
---@class BufferedSocket
---@field address string # The address the socket is connected to.
---@field port integer # The port the socket is connected to.
local BufferedSocket = {}

---Reads data from the buffered socket.
---@param count integer|nil # The number of bytes to read. If omitted, reads all available data.
---@return string|nil data # The data read from the socket, or nil if no data is available.
function BufferedSocket:read(count) end

---Writes data to the buffered socket.
---@param data string # The data to write to the socket.
---@return boolean success # True if the write succeeded, false otherwise.
function BufferedSocket:write(data) end

---Closes the buffered socket.
function BufferedSocket:close() end

---Sets the read timeout for the buffered socket.
---@param seconds number # The timeout in seconds.
function BufferedSocket:setTimeout(seconds) end