---@meta _

---A Linked Card. The pair of cards shares one channel and talks across any
---distance and across dimensions, without modems or ports.
---@class tunnel: BaseComponent
---@field type "tunnel"
local tunnel = {}

---Gets this link card's shared channel address
---@return string
function tunnel.getChannel() end

---Get the current wake-up message.
---@return string, boolean
function tunnel.getWakeMessage() end

---Gets the maximum packet size (config setting).
---@return number
function tunnel.maxPacketSize() end

---Sends the specified data to the card this one is linked to.
---@param data any
function tunnel.send(data) end

---Set the wake-up message and whether to ignore additional data/parameters.
---@param message? string
---@param fuzzy? boolean
---@return string
function tunnel.setWakeMessage(message, fuzzy) end
