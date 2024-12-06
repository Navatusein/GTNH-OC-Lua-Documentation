---@meta _

---@class glasses : BaseComponent
---@field type "glasses"
local glasses = {}

---Lists the name of all the players currently wearing ar glasses linked to the terminal that are online.
---@return string ... # The names of all the players currently wearing ar glasses linked to the terminal that are online.
function glasses.getBindPlayers() end

---Gets the number of instantiated widgets.
---@return integer # The number of instantiated widgets.
function glasses.getObjectCount() end

---Removes the widget with the corresponding id.
---@param widgetId integer # The id of the widget to remove.
---@return boolean # `True` if the widget was removed.
function glasses.removeObject(widgetId) end

---Removes all widgets.
function glasses.removeAll() end

---Generates a new UUID
---@return integer # the new UUID
function glasses.newUniqueKey() end

---Adds a new rectangle widget to the render surface.
---@return Rect2D # The new rectangle widget.
function glasses.addRect() end

---Adds a new dot widget to the render surface.
---@return Dot2D # The new dot widget.
function glasses.addDot() end

---Adds a new item widget to the surface.
---@return ItemIcon2D # The new item widget.
function glasses.addItem() end

---Adds a new cube widget to the world.
---@return Cube3D # The new cube widget.
function glasses.addCube3D() end

---Adds a new floating text widget to the world.
---@return Text3D # The new floating text widget.
function glasses.addFloatingText() end

---Adds a new triangle widget to the surface.
---@return Triangle2D # The new triangle widget.
function glasses.addTriangle() end

---Adds a new 3D dot widget to the world.
---@return Dot3D # The new 3D dot widget.
function glasses.addDot3D() end

---Adds a new text label widget to the surface.
---@return Text2D # The new text label widget.
function glasses.addTextLabel() end

---Adds a new 3D line widget to the world.
---@return Line3D # The new 3D line Widget.
function glasses.addLine3D() end

---Adds a new 3D triangle widget to the world.
---@return Triangle3D # The new 3D triangle Widget.
function glasses.addTriangle3D() end

---Adds a new 3D quad widget to the world.
---@return Quad3D # The new 3D quad Widget.
function glasses.addQuad3D() end

---Adds a new quad widget to the surface.
---@return Quad2D # The new quad Widget.
function glasses.addQuad() end