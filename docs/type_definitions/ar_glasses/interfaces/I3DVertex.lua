---@meta _

---@class I3DVertex: IAttribute
local I3DVertex = {}

---Sets the position of a vertex of this widget relative to the position of the glasses terminal.
---@param vertexId integer # The id of the vertex to change.
---@param x number # The new x position of the vertex relative to the position of the glasses terminal.
---@param y number # The new y position of the vertex relative to the position of the glasses terminal.
---@param z number # The new z position of the vertex relative to the position of the glasses terminal.
function I3DVertex.setVertex(vertexId, x, y, z) end


---Gets the number of vertex in the widget.
---@return integer # The number of vertex in the widget.
function I3DVertex.GetVertexCount() end