---@meta _

---The Radar from Computronics.
---@class radar: BaseComponent
---@field type "radar"
local radar = {}

---Returns a list of all entities detected within the specified or the maximum range
---@param distance? number
---@return table
function radar.getEntities(distance) end

---Returns a list of all items detected within the specified or the maximum range
---@param distance? number
---@return table
function radar.getItems(distance) end

---Returns a list of all mobs detected within the specified or the maximum range
---@param distance? number
---@return table
function radar.getMobs(distance) end

---Returns a list of all players detected within the specified or the maximum range
---@param distance? number
---@return table
function radar.getPlayers(distance) end
