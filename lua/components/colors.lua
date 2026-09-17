---@meta _

---The Colorful Upgrade from Computronics, installed in a robot or a drone.
---@class colors: BaseComponent
---@field type "colors"
local colors = {}

---Returns the color of the robot.
---@return number
function colors.getColor() end

---Resets the colour of the robot. Returns true on success, false and an error message otherwise
---@return boolean
function colors.resetColor() end

---Sets the color of the robot. Returns true on success, false and an error message otherwise
---@param color number
---@return boolean
function colors.setColor(color) end
