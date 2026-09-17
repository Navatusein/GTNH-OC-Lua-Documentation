---@meta _

---The Locomotive Relay from Railcraft, driven by Computronics.
---@class locomotive_relay: BaseComponent
---@field type "locomotive_relay"
local locomotiveRelay = {}

---gets the current charge of the locomotive
---@return number
function locomotiveRelay.getCharge() end

---gets the destination the locomotive is currently set to
---@return string
function locomotiveRelay.getDestination() end

---returns the current mode of the locomotive; can be 'running', 'idle' or 'shutdown'
---@return string
function locomotiveRelay.getMode() end

---returns the current name of the locomotive
---@return string
function locomotiveRelay.getName() end

---Sets the locomotive's destination; there needs to be a golden ticket inside the locomotive
---@param destination string
---@return boolean
function locomotiveRelay.setDestination(destination) end
