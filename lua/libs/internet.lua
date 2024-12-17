---@meta "internet"

---@class internet
local internet = {}

---Sends an HTTP request to the specified URL.
---@param url string # The URL to send the request to.
---@param data string|table|nil # The POST data to send. If omitted, a GET request is sent.
---@param headers table<string, string>|nil # Additional HTTP headers. Defaults to nil.
---@param method string|nil # The HTTP method to use (e.g., "GET", "POST", "PUT"). Defaults to "GET" or "POST" depending on `data`.
---@return fun():string|nil # An iterator that returns chunks of the response body.
function internet.request(url, data, headers, method) end

---Opens a TCP socket to the specified address and port.
---@param address string # The address to connect to.
---@param port integer|nil # The port to connect to. Defaults to 80.
---@return InternetSocket # A socket-like table providing `read`, `write`, and `close` methods.
function internet.socket(address, port) end

---Opens a buffered TCP stream to the specified address and port.
---@param address string # The address to connect to.
---@param port integer|nil # The port to connect to. Defaults to 80.
---@return BufferedSocket # A buffered stream-like object with `read`, `write`, and `close` methods.
function internet.open(address, port) end

return internet