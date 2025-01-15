---@meta _

---@class IScalable: IAttribute
local IScalable = {}

---Sets the scale of a widget.
---Note that the size and position of a widget is dependent on the player's window size/resolution and ui scale.
---There is no way to find either the scale or resolution of a player programmatically.
---@param scale number # The factor by which to scale the widget.
function IScalable.setScale(scale) end

---Gets the scale of the widget.
---@return number # The scale of the widget.
function IScalable.getScale() end