---@meta _

---@class internet: BaseComponent
---@field type "internet"
local internet = {}

---Returns whether HTTP requests can be made, as set in the config.
---@return boolean
function internet.isHttpEnabled() end

---Returns whether TCP connections can be made, as set in the config.
---@return boolean
function internet.isTcpEnabled() end

---Opens a new TCP connection.
---@param address string # The address to connect to.
---@param port? integer # The port to connect to, if it is not part of the address.
---@return InternetSocket # The handle of the connection.
function internet.connect(address, port) end

---Starts an HTTP request.
---
---Further results are pushed as `http_response` signals.
---@param url string # The URL to request.
---@param postData? string # The body to send, which turns the request into a POST.
---@param headers? table<string, string> # Additional headers to send.
---@param method? string # The HTTP method to use, overriding the one implied by `postData`.
---@return BufferedSocket # The handle of the request.
function internet.request(url, postData, headers, method) end
