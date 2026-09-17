---@meta _

---A vanilla beacon, seen through an adapter.
---@class beacon: BaseComponent
---@field type "beacon"
local beacon = {}

---Get the number of levels for this beacon.
---@return number
function beacon.getLevels() end

---Get the name of the active primary effect.
---@return string
function beacon.getPrimaryEffect() end

---Get the name of the active secondary effect.
---@return string
function beacon.getSecondaryEffect() end
