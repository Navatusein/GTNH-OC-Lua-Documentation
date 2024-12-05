---@meta _

---@class IViewDistance: I3DPositionable
local IViewDistance = {}

---Sets the maximum distance from a player at which the 3D widget will become visible.
---@param distance integer # The maximum distance from the player at which the 3D widget will be rendered.
function IViewDistance.setViewDistance(distance) end

---Gets the maximum distance from a player at which the 3D widget will become visible.
---@return integer # The maximum distance from the player at which the 3D widget will be rendered.
function IViewDistance.getViewDistance() end