---@meta _

---@class stargate: BaseComponent
---@field type "stargate"
local stargate = {}

---Returns the current stargate state, number of engaged chevrons, and direction.
---@return string state, integer? chevrons, string? direction
function stargate.stargateState() end

---Returns the amount of energy currently available.
---@return number
function stargate.energyAvailable() end

---Returns the energy required to dial the specified address.
---@param address string # Stargate address to dial.
---@return number
function stargate.energyToDial(address) end

---Returns the local address of this stargate.
---@return string
function stargate.localAddress() end

---Returns the address of the currently connected remote stargate, or `nil` if not connected.
---@return string?
function stargate.remoteAddress() end

---Dials the specified stargate address.
---@param address string # Stargate address to dial.
function stargate.dial(address) end

---Disconnects the stargate if it is connected.
function stargate.disconnect() end

---Returns the current state of the iris (e.g., "open", "closed").
---@return string
function stargate.irisState() end

---Opens the iris.
function stargate.openIris() end

---Closes the iris.
function stargate.closeIris() end

---Sends a message through the stargate to the connected gate.
---@param ... any # Message components to send.
function stargate.sendMessage(...) end
