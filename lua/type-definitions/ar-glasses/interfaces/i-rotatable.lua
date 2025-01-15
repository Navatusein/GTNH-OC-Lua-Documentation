---@meta _

---@class IRotatable: IAttribute
local IRotatable = {}

---Sets the rotation angle of the widget.
---@param degrees number # The new rotation angle of the widget in degrees.
function IRotatable.setRotation(degrees) end

---Gets the rotation angle of the widget.
---@return number degrees # The number of degrees by which the widget is rotated.
function IRotatable.getRotation() end