---@meta "buffer"

---@class buffer
local buffer = {}

---Flushes any buffered data, writing it to the stream.
function buffer:flush() end

---Closes the buffered stream, flushing any remaining data.
function buffer:close() end

---Sets the buffering mode and size for the buffer.
---@param mode string|nil # The buffering mode: "no", "full", or "line". Defaults to "full".
---@param size number|nil # The buffer size in bytes. Defaults to system-dependent value.
---@return string mode # The applied buffering mode.
---@return number size # The applied buffer size.
function buffer:setvbuf(mode, size) end

---Writes data to the buffered stream.
---@vararg string # The data to write.
function buffer:write(...) end

---Reads data from the buffered stream.
---@vararg string|number # Read formats (e.g., "*l", "*a", "*n", or a number for bytes).
---@return ... # Returns read data based on the formats specified.
function buffer:read(...) end

---Sets the read timeout for the buffered stream.
---@param timeout number # The timeout in seconds. Defaults to `math.huge`.
function buffer:setTimeout(timeout) end

---Gets the current read timeout for the buffered stream.
---@return number timeout # The timeout in seconds.
function buffer:getTimeout() end

---Seeks to a position in the buffered stream.
---@param whence string|nil # The reference point: "cur", "set", or "end". Defaults to "cur".
---@param offset number|nil # The offset in bytes. Defaults to 0.
---@return number|nil position # The new position, or nil on failure.
function buffer:seek(whence, offset) end

---Returns an iterator that reads lines from the buffered stream.
---@vararg string # Line formats for reading (e.g., "*l", "*L").
---@return fun():string|nil # An iterator for reading lines.
function buffer:lines(...) end

---Creates a new buffered stream.
---@param mode string|nil # The mode for the buffer: "r", "w", or "rw". Defaults to "r".
---@param stream table # The underlying stream to buffer.
---@return buffer # The new buffered stream.
function buffer.new(mode, stream) end
