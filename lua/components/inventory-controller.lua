---@meta _

---@class inventory_controller: BaseComponent
---@field type "inventory_controller"
local inventoryController = {}

---Gets Itemstack description of item in the specified (or selected slot if no slot number is provided) of robot inventory.
---
---**Robot only** - an adapter has no inventory of its own.
---@param slot? integer # Which slot to look at
---@return ItemStack|nil # `nil` if there is no items in the slot
function inventoryController.getStackInInternalSlot(slot) end

---Gets Itemstack description of item in the specified of an external inventory.
---@param side integer # Which side to look at
---@param slot integer # Which slot to look at
---@return ItemStack|nil # `nil` if there is no items in the slot
function inventoryController.getStackInSlot(side, slot) end

---Get a description of all stacks in the inventory on the specified side of the device.
---@param side integer # Which side to look at
---@return StackSlot # An iterator userdata over the stacks in the inventory.
function inventoryController.getAllStacks(side) end

---Get the name of the inventory on the specified side of the device.
---@param side integer # Which side to look at
---@return string # The name of the inventory.
function inventoryController.getInventoryName(side) end

---Get the number of slots in the inventory on the specified side of the device.
---@param side integer # Which side to look at
---@return integer # The number of slots.
function inventoryController.getInventorySize(side) end

---Get the number of items in the specified slot of the inventory on the specified side.
---@param side integer # Which side to look at
---@param slot integer # Which slot to look at
---@return integer # The number of items in the slot.
function inventoryController.getSlotStackSize(side, slot) end

---Get the maximum number of items the specified slot of the inventory on the specified side can hold.
---@param side integer # Which side to look at
---@param slot integer # Which slot to look at
---@return integer # The maximum stack size of the slot.
function inventoryController.getSlotMaxStackSize(side, slot) end

---Get whether the items in the two specified slots of the inventory on the specified side are of the same type.
---@param side integer # Which side to look at
---@param slotA integer # The first slot.
---@param slotB integer # The second slot.
---@param checkNBT? boolean # Whether to compare NBT data as well. Defaults to false.
---@return boolean # True if both slots hold the same type of item.
function inventoryController.compareStacks(side, slotA, slotB, checkNBT) end

---Get whether the items in the two specified slots of the inventory on the specified side
---are equivalent, that is, whether they share OreDictionary IDs.
---@param side integer # Which side to look at
---@param slotA integer # The first slot.
---@param slotB integer # The second slot.
---@return boolean # True if the stacks are equivalent.
function inventoryController.areStacksEquivalent(side, slotA, slotB) end

---Compare an item in the specified slot of the inventory on the specified side with one in a database.
---@param side integer # Which side to look at
---@param slot integer # The slot in the inventory.
---@param dbAddress string # The address of the database.
---@param dbSlot integer # The slot in the database.
---@param checkNBT? boolean # Whether to compare NBT data as well. Defaults to false.
---@return boolean # True if the items match.
function inventoryController.compareStackToDatabase(side, slot, dbAddress, dbSlot, checkNBT) end

---Change the display name of the stack in the inventory on the specified side.
---@param side integer # Which side to look at
---@param slot integer # The slot in the inventory.
---@param label string # The new display name.
---@return boolean # True on success.
function inventoryController.setStackDisplayName(side, slot, label) end

---Store an item stack description from an external inventory in a database.
---@param side integer # Which side to look at
---@param slot integer # The slot in the inventory.
---@param dbAddress string # The address of the database.
---@param dbSlot integer # The slot in the database to store into.
---@return boolean # True on success.
function inventoryController.store(side, slot, dbAddress, dbSlot) end

---Store an item stack description from the robot's own inventory in a database.
---
---**Robot only** - an adapter has no inventory of its own.
---@param slot integer # The slot in the robot inventory.
---@param dbAddress string # The address of the database.
---@param dbSlot integer # The slot in the database to store into.
---@return boolean # True on success.
function inventoryController.storeInternal(slot, dbAddress, dbSlot) end

---Compare an item in the specified slot of the robot's own inventory with one in a database.
---
---**Robot only** - an adapter has no inventory of its own.
---@param slot integer # The slot in the robot inventory.
---@param dbAddress string # The address of the database.
---@param dbSlot integer # The slot in the database.
---@param checkNBT? boolean # Whether to compare NBT data as well. Defaults to false.
---@return boolean # True if the items match.
function inventoryController.compareToDatabase(slot, dbAddress, dbSlot, checkNBT) end

---Get whether the stack in the selected slot is equivalent to the item in the specified slot,
---that is, whether they share OreDictionary IDs.
---
---**Robot only** - an adapter has no inventory of its own.
---@param otherSlot integer # The slot to compare the selected one with.
---@return boolean # True if the stacks are equivalent.
function inventoryController.isEquivalentTo(otherSlot) end

---Swaps the equipped tool with the content of the currently selected inventory slot.
---
---**Robot only** - an adapter has nothing to equip.
---@return boolean # True on success.
function inventoryController.equip() end

---Swaps the installed upgrade in the given container slot with the content of the selected inventory slot.
---
---**Robot only** - an adapter has no upgrade containers.
---@param slot? integer # The upgrade container slot. Defaults to 1.
---@return boolean # True on success.
function inventoryController.installUpgrade(slot) end

---Get the tier of the upgrade container in the given slot.
---
---**Robot only** - an adapter has no upgrade containers.
---@param slot integer # The upgrade container slot.
---@return integer # The tier of the container.
function inventoryController.getUpgradeContainerTier(slot) end

---Get the type of the upgrade container in the given slot.
---
---**Robot only** - an adapter has no upgrade containers.
---@param slot integer # The upgrade container slot.
---@return string # The type of the container.
function inventoryController.getUpgradeContainerType(slot) end

---Drops the selected item stack into the specified slot of an external inventory.
---
---**Robot only** - an adapter has no selected slot.
---@param facing integer # The side the target inventory is on.
---@param slot integer # The slot in the target inventory.
---@param count? integer # How many items to drop.
---@param fromSide? integer # The side of the target inventory to drop into.
---@return boolean # True if at least one item was dropped.
function inventoryController.dropIntoSlot(facing, slot, count, fromSide) end

---Sucks items from the specified slot of an external inventory.
---
---**Robot only** - an adapter has no selected slot.
---@param facing integer # The side the source inventory is on.
---@param slot integer # The slot in the source inventory.
---@param count? integer # How many items to suck.
---@param fromSide? integer # The side of the source inventory to suck from.
---@return boolean # True if at least one item was sucked.
function inventoryController.suckFromSlot(facing, slot, count, fromSide) end

---Get the size of the inventory of the item in the specified slot of the robot.
---
---**Robot only** - an adapter has no inventory of its own.
---@param slot integer # The slot holding the item.
---@return integer # The number of slots in the item's inventory.
function inventoryController.getItemInventorySize(slot) end

---Drops an item into the specified slot of the inventory of an item held by the robot.
---
---**Robot only** - an adapter has no inventory of its own.
---@param inventorySlot integer # The slot holding the item with the inventory.
---@param slot integer # The slot inside that item's inventory.
---@param count? integer # How many items to drop. Defaults to 64.
---@return integer # The number of items dropped.
function inventoryController.dropIntoItemInventory(inventorySlot, slot, count) end

---Sucks an item out of the specified slot of the inventory of an item held by the robot.
---
---**Robot only** - an adapter has no inventory of its own.
---@param inventorySlot integer # The slot holding the item with the inventory.
---@param slot integer # The slot inside that item's inventory.
---@param count? integer # How many items to suck. Defaults to 64.
---@return integer # The number of items sucked.
function inventoryController.suckFromItemInventory(inventorySlot, slot, count) end
