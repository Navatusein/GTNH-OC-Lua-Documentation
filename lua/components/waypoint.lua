---@meta _

---@class waypoint: BaseComponent
---@field type "waypoint"
local waypoint = {}

---Sets the label for this waypoint.
---@param value string # The label to assign to the waypoint.
function waypoint.setLabel(value) end

---Gets the current label of this waypoint.
---@return string label # The current label of the waypoint.
function waypoint.getLabel() end

return waypoint
