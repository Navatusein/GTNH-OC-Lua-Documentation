---@meta _

---@class I3DPositionable: IAttribute
local I3DPositionable = {}

---Sets the origin position of a 3d widget relative to the position of the glasses terminal.
---@param x number # The new x position of the vertex in the world relative to the position of the glasses terminal.
---@param y number # The new y position of the vertex in the world relative to the position of the glasses terminal.
---@param z number # The new z position of the vertex in the world relative to the position of the glasses terminal.
function I3DPositionable.set3DPos(x, y, z) end


---Gets the origin position of a 3d widget relative to the position of the glasses terminal.
---@return number x # The x position of the widget in the world relative to the position of the glasses terminal.
---@return number y # The y position of the widget in the world relative to the position of the glasses terminal.
---@return number z # The z position of the widget in the world relative to the position of the glasses terminal.
function I3DPositionable.get3DPos() end