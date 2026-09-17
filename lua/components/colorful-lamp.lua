---@meta _

---The Colorful Lamp from Computronics.
---@class colorful_lamp: BaseComponent
---@field type "colorful_lamp"
local colorfulLamp = {}

---Returns the current lamp color
---@return number
function colorfulLamp.getLampColor() end

---Sets the lamp color; Set to 0 to turn the off the lamp; Returns true on success
---@param color number
---@return boolean
function colorfulLamp.setLampColor(color) end
