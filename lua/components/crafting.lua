---@meta _

---@class crafting: BaseComponent
---@field type "crafting"
local crafting = {}

---Tries to craft the specified number of items using the recipe laid out
---in the top left 3x3 area of the robot's inventory.
---@param count? integer # How many items to craft. Defaults to one stack.
---@return integer # The number of items crafted.
function crafting.craft(count) end
