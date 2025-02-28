---@meta _

---@class motion_sensor: BaseComponent
---@field type "motion_sensor"
local motion_sensor = {}

---Sets the sensitivity of the motion sensor.
---@param value number # The new sensitivity value.
---@return number oldValue # The previous sensitivity value before the change.
function motion_sensor.setSensitivity(value) end

---Gets the current sensitivity of the motion sensor.
---@return number sensitivity # The current sensitivity level.
function motion_sensor.getSensitivity() end

return motion_sensor
