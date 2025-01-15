---@meta _

---@class modem: BaseComponent
---@field type "modem"
local modem = {}

---Checks if the modem supports wireless communication.
---@return boolean # True if the modem is wireless, false otherwise.
function modem.isWireless() end

---Checks if the modem supports wired communication.
---@return boolean # True if the modem is wired, false otherwise.
function modem.isWired() end

---Gets the maximum packet size for network messages.
---@return number # The maximum packet size in bytes.
function modem.maxPacketSize() end

---Opens a port for listening to incoming messages.
---@param port number # The port number to open (1-65535).
---@return boolean # True if the port was opened, false if it was already open.
function modem.open(port) end

---Closes a specific port or all ports if no port is specified.
---@param port number|nil # The port number to close. If nil, closes all ports.
---@return boolean # True if the port(s) were closed.
function modem.close(port) end

---Checks if a specific port is open.
---@param port number # The port number to check.
---@return boolean # True if the port is open, false otherwise.
function modem.isOpen(port) end

---Sends a message to a specific address on a specific port.
---@param address string # The target address.
---@param port number # The target port.
---@vararg any # The data to send. Must be of basic types: nil, boolean, number, or string.
---@return boolean # True if the message was sent successfully.
function modem.send(address, port, ...) end

---Broadcasts a message to all reachable devices on a specific port.
---@param port number # The target port.
---@vararg any # The data to broadcast. Must be of basic types: nil, boolean, number, or string.
---@return boolean # True if the message was broadcast successfully.
function modem.broadcast(port, ...) end

---Gets the current wireless signal strength.
---@return number # The current signal strength (only for wireless modems).
function modem.getStrength() end

---Sets the wireless signal strength.
---@param strength number # The desired signal strength.
---@return number # The actual signal strength set (capped by modem's maximum).
function modem.setStrength(strength) end

---Gets the current wake-up message.
---@return string message # The current wake-up message.
---@return boolean fuzzy # Whether fuzzy matching is enabled.
function modem.getWakeMessage() end

---Sets the wake-up message and matching behavior.
---@param message string # The wake-up message.
---@param fuzzy boolean|nil # Whether to enable fuzzy matching. Defaults to false.
---@return string # The previously set wake-up message.
function modem.setWakeMessage(message, fuzzy) end
