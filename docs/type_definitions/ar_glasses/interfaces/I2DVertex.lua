---@meta _

---@class I2DVertex: IAttribute
local I2DVertex = {}

---Sets the position of a vertex of this widget.
---@param vertexId integer # The id of the vertex to change.
---@param x number # The new x position of the vertex.
---@param y number # The new y position of the vertex.
function I2DVertex.setVertex(vertexId, x, y) end


---Gets the number of vertex in the widget.
---@return integer # The number of vertex in the widget.
function I2DVertex.GetVertexCount() end