---@meta _

---A network relay or an access point.
---@class relay: BaseComponent
---@field type "relay"
local relay = {}

---Get the signal strength (range) used when relaying messages.
---@return number
function relay.getStrength() end

---Set the signal strength (range) used when relaying messages.
---@param strength number # The desired signal strength.
---@return number # The actual strength that was set.
function relay.setStrength(strength) end

---Get whether the access point currently acts as a repeater,
---that is, resends received wireless packets wirelessly.
---@return boolean
function relay.isRepeater() end

---Set whether the access point should act as a repeater.
---@param enabled boolean
---@return boolean # The previous value.
function relay.setRepeater(enabled) end
