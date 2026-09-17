---@meta _

---The Arcane Crafting Upgrade from Thaumcraft.
---@class arcane_crafting: BaseComponent
---@field type "arcane_crafting"
local arcaneCrafting = {}

---Tries to craft the specified number of items in the top left area of the inventory using both normal and arcane recipes.
---@param count? number
---@return boolean, number, string
function arcaneCrafting.craft(count) end

---Tries to craft the specified number of items in the top left area of the inventory using only Thaumcraft crafting recipes.
---@param count? number
---@return boolean, number, string
function arcaneCrafting.craftArcane(count) end

---Tries to craft the specified number of items in the top left area of the inventory using only vanilla crafting recipes.
---@param count? number
---@return boolean, number, string
function arcaneCrafting.craftNormal(count) end
