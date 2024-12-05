---@meta _

---@class inventory_controller: BaseComponent
---@field type "inventory_controller"
local inventoryController = {}

---Gets Itemstack description of item in the specified (or selected slot if no slot number is provided) of robot inventory.
---@param slot? integer # Which slot to look at
---@return ItemStack|nil # `nil` if there is no items in the slot
function inventoryController.getStackInInternalSlot(slot) end

---Gets Itemstack description of item in the specified of an external inventory.
---@param side integer # Which side to look at
---@param slot integer # Which slot to look at
---@return ItemStack|nil # `nil` if there is no items in the slot
function inventoryController.getStackInSlot(side, slot) end