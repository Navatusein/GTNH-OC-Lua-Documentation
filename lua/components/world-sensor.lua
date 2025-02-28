---@meta _

---@class world_sensor: BaseComponent
---@field type "world_sensor"
local world_sensor = {}

---Checks whether the current world has a breathable atmosphere.
---@return boolean isBreathable # True if the atmosphere is breathable, false otherwise.
function world_sensor.hasBreathableAtmosphere() end

---Gets the gravity level of the world where the device is currently located.
---@return number gravity # The gravity level (typically between 0 and 1, where 1 is Earth-like gravity).
function world_sensor.getGravity() end

---Gets the wind level in the world where the device is currently located.
---@return number windLevel # The wind level, representing the intensity of atmospheric winds.
function world_sensor.getWindLevel() end

---Checks whether the specified gas is present in the world where the device is currently located.
---@param gas string # The name of the gas to check (e.g., "oxygen", "nitrogen").
---@return boolean isPresent # True if the specified gas is present, false otherwise.
function world_sensor.isGasPresent(gas) end

return world_sensor
