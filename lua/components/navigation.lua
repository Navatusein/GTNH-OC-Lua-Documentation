---@meta _

---@class navigation: BaseComponent
---@field type "navigation"
local navigation = {}

---Gets the current relative position of the robot.
---@return number x # The X-coordinate relative to the navigation reference point.
---@return number y # The Y-coordinate relative to the navigation reference point.
---@return number z # The Z-coordinate relative to the navigation reference point.
function navigation.getPosition() end

---Gets the operational range of the navigation upgrade.
---@return number range # The range in which the navigation module can detect waypoints and determine positions.
function navigation.getRange() end

---Gets the current orientation (facing direction) of the robot.
---@return number facing # The direction the robot is facing (typically 0-3, corresponding to cardinal directions).
function navigation.getFacing() end

---Finds waypoints within the specified range.
---@param range number # The range in which to search for waypoints.
---@return table<number, table> waypoints # A table where each entry contains waypoint data (e.g., coordinates, label).
function navigation.findWaypoints(range) end

return navigation
