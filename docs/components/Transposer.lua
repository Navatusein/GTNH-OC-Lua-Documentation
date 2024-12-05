---@meta _

---@class transposer: BaseComponent
---@field type "transposer"
local transposer = {}

---Transfer some fluids between two fluid handlers (pipes or tanks, etc).
---@param sourceSide integer # The side pulled from.
---@param sinkSide integer # The side transferred to.
---@param count integer # The number of millibuckets to transfer. Defaults to 1000 if not specified.
---@return boolean, number|string # Returns true and the number of millibuckets transferred on success, or false and an error message on failure.
function transposer.transferFluid(sourceSide, sinkSide, count) end

---Store an item stack description in the database.
---@param side integer # The side of the inventory.
---@param slot integer # The slot in the inventory.
---@param dbAddress string # The database address.
---@param dbSlot integer # The database slot.
---@return boolean # Returns true on success or false on failure.
function transposer.store(side, slot, dbAddress, dbSlot) end

---Compare an item in the inventory with one in the database.
---@param side integer # The side of the inventory.
---@param slot integer # The inventory slot.
---@param dbAddress string # The database address.
---@param dbSlot integer # The database slot.
---@param checkNBT boolean|nil # Whether to check NBT data. Defaults to false.
---@return boolean # Returns true if the items match, false otherwise.
function transposer.compareStackToDatabase(side, slot, dbAddress, dbSlot, checkNBT) end

---Get the number of items in a specific inventory slot.
---@param side integer # The side of the inventory.
---@param slot integer # The slot number.
---@return integer # The number of items in the slot.
function transposer.getSlotStackSize(side, slot) end

---Get the maximum number of items a specific slot can hold.
---@param side integer # The side of the inventory.
---@param slot integer # The slot number.
---@return integer # The maximum stack size of the slot.
function transposer.getSlotMaxStackSize(side, slot) end

---Get the name of the inventory on a specific side.
---@param side integer # The side of the device.
---@return string # The name of the inventory.
function transposer.getInventoryName(side) end

---Get the number of slots in the inventory on a specific side.
---@param side integer # The side of the device.
---@return integer # The number of slots in the inventory.
function transposer.getInventorySize(side) end

---Get a description of the fluid in a specific tank.
---@param side integer # The side of the device.
---@param tank integer # The tank number.
---@return FluidStack # A table describing the fluid in the tank.
function transposer.getFluidInTank(side, tank) end

---Get the amount of fluid in a specific tank.
---@param side integer # The side of the device.
---@param tank integer # The tank number.
---@return integer # The amount of fluid in the tank.
function transposer.getTankLevel(side, tank) end

---Transfer items between inventories.
---@param sourceSide integer # The side to transfer items from.
---@param sinkSide integer # The side to transfer items to.
---@param count integer # The number of items to transfer.
---@param sourceSlot integer|nil # The slot in the source inventory.
---@param sinkSlot integer|nil # The slot in the target inventory.
---@return integer # The number of items transferred.
function transposer.transferItem(sourceSide, sinkSide, count, sourceSlot, sinkSlot) end

---Compare items in two slots of the same inventory.
---@param side integer # The side of the inventory.
---@param slotA integer # The first slot.
---@param slotB integer # The second slot.
---@param checkNBT boolean|nil # Whether to check NBT data. Defaults to false.
---@return boolean # Returns true if the items match, false otherwise.
function transposer.compareStacks(side, slotA, slotB, checkNBT) end

---Check if two stacks are equivalent based on shared OreDictionary IDs.
---@param side integer # The side of the inventory.
---@param slotA integer # The first slot.
---@param slotB integer # The second slot.
---@return boolean # Returns true if the stacks are equivalent, false otherwise.
function transposer.areStacksEquivalent(side, slotA, slotB) end

---Get the number of tanks available on a specific side.
---@param side integer # The side of the device.
---@return integer # The number of tanks.
function transposer.getTankCount(side) end

---Get a description of the stack in a specific inventory slot.
---@param side integer # The side of the inventory.
---@param slot integer # The slot number.
---@return ItemStack # A table describing the stack.
function transposer.getStackInSlot(side, slot) end

---Get the capacity of a specific tank.
---@param side integer # The side of the device.
---@param tank integer # The tank number.
---@return integer # The capacity of the tank.
function transposer.getTankCapacity(side, tank) end

---Get descriptions of all stacks in the inventory on a specific side.
---@param side integer # The side of the inventory.
---@return StackSlot # A table of all stacks in the inventory.
function transposer.getAllStacks(side) end

---Get all elements in the internal array of stacks.
---@return ItemStack # A table of all elements in the array.
function transposer.getAll() end

---Get the number of elements in the internal array.
---@return integer # The number of elements.
function transposer.count() end

---Reset the iterator for the internal array of stacks.
function transposer.reset() end
