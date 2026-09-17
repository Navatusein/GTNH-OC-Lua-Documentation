---@meta _

---The firebox of a Railcraft boiler.
---@class boiler_firebox: BaseComponent
---@field type "boiler_firebox"
local boilerFirebox = {}

---Get the maximum temperature of the boiler.
---@return number
function boilerFirebox.getMaxHeat() end

---Get the temperature of the boiler.
---@return number
function boilerFirebox.getTemperature() end

---Get whether the boiler is active or not.
---@return boolean
function boilerFirebox.isBurning() end
