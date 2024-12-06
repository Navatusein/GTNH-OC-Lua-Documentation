---@meta _

---@class IPositionable: IAttribute
local IPositionable = {}

---Sets the position of a widget on the screen. 0,0 is the top left of the screen.
---Note that the size and position of a widget is dependent on the player's window size/resolution and ui scale.
---There is no way to find either the scale or resolution of a player programmatically.
---@param x number # The x position of the widget.
---@param y number # The y position of the widget.
function IPositionable.setPosition(x,y) end

---Gets the position of a 2D widget.
---@return number x # The x position of the widget on the screen.
---@return number y # The x position of the widget on the screen.
function IPositionable.getPosition() end