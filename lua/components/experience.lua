---@meta _

---@class experience: BaseComponent
---@field type "experience"
local experience = {}

---The current level of experience stored in this experience upgrade.
---@return number # The current level.
function experience.level() end

---Tries to consume an enchanted item to add experience to the upgrade.
---@return boolean # True if an item was consumed.
function experience.consume() end
