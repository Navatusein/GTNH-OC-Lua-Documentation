---@meta _

---@class IResizable: IAttribute
local IResizable = {}

---Sets the width and height of the widget.
---Note that the size and position of a widget is dependent on the player's window size/resolution and ui scale.
---There is no way to find either the scale or resolution of a player programmatically.
---@param height  number # The new height of the widget.
---@param width number # The new width of the widget.
function IResizable.setSize(height, width) end

---Gets the width and height of the widget.
---@return number width # The height of the widget.
---@return number height # The width of the widget.
function IResizable.getSize() end