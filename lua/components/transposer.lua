---@meta _

---@class transposer: BaseComponent
---@field type "transposer"
local transposer = {}

---Transfer some fluids between two fluid handlers (pipes or tanks, etc).
---@param sourceSide integer # The side pulled from.
---@param sinkSide integer # The side transferred to.
---@param count integer|nil # The number of millibuckets to transfer. Defaults to 1000.
---@param sourceTank integer|nil # The tank index to pull from.
---@return boolean, number # Returns true and the number of millibuckets transferred, or false and an error message.
function transposer.transferFluid(sourceSide, sinkSide, count, sourceTank) end

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

---Get the description of the fluid in a tank or container.
---@param side integer # The side of the device.
---@param tank integer|nil # The tank index. Defaults to nil.
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
---@param count integer|nil # The number of items to transfer.
---@param sourceSlot integer|nil # The slot in the source inventory.
---@param sinkSlot integer|nil # The slot in the target inventory.
---@return integer # The number of items transferred.
function transposer.transferItem(sourceSide, sinkSide, count, sourceSlot, sinkSlot) end

---Compare an item in the inventory with one in the database.
---@param side integer # The side of the inventory.
---@param slot integer # The slot number.
---@param dbAddress string # The database address.
---@param dbSlot integer # The database slot.
---@param checkNBT boolean|nil # Whether to check NBT data. Defaults to false.
---@return boolean # True if items match, false otherwise.
function transposer.compareStackToDatabase(side, slot, dbAddress, dbSlot, checkNBT) end

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

---Transfer fluid from a tank to a container.
---@param tankSide integer # The side of the tank.
---@param inventorySide integer # The side of the inventory.
---@param inventorySlot integer # The slot in the inventory.
---@param count integer|nil # The number of millibuckets to transfer.
---@param sourceTank integer|nil # The source tank index.
---@param outputSide integer|nil # The output side.
---@param outputSlot integer|nil # The output slot.
---@return boolean, number # Returns true and the number of millibuckets transferred, or false and an error message.
function transposer.transferFluidFromTankToContainer(tankSide, inventorySide, inventorySlot, count, sourceTank, outputSide, outputSlot) end

---Transfer fluid from a container to a tank.
---@param inventorySide integer # The side of the inventory.
---@param inventorySlot integer # The slot in the inventory.
---@param tankSide integer # The side of the tank.
---@param count integer|nil # The number of millibuckets to transfer.
---@param outputSide integer|nil # The output side.
---@param outputSlot integer|nil # The output slot.
---@return boolean, number # Returns true and the number of millibuckets transferred, or false and an error message.
function transposer.transferFluidFromContainerToTank(inventorySide, inventorySlot, tankSide, count, outputSide, outputSlot) end

---Transfer fluid between two containers.
---@param sourceSide integer # The source inventory side.
---@param sourceSlot integer # The source slot in the inventory.
---@param sinkSide integer # The sink inventory side.
---@param sinkSlot integer # The sink slot in the inventory.
---@param count integer|nil # The number of millibuckets to transfer.
---@param sourceOutputSide integer|nil # The source output side.
---@param sinkOutputSide integer|nil # The sink output side.
---@param sourceOutputSlot integer|nil # The source output slot.
---@param sinkOutputSlot integer|nil # The sink output slot.
---@return boolean, number # Returns true and the number of millibuckets transferred, or false and an error message.
function transposer.transferFluidBetweenContainers(sourceSide, sourceSlot, sinkSide, sinkSlot, count, sourceOutputSide, sinkOutputSide, sourceOutputSlot, sinkOutputSlot) end

---Set the display name of the stack in the inventory.
---@param side integer # The side of the inventory.
---@param slot integer # The slot number.
---@param label string # The new display name for the stack.
---@return boolean # Returns true if successful.
function transposer.setStackDisplayName(side, slot, label) end

---Get the description of the fluid in a container.
---@param side integer # The side of the inventory.
---@param slot integer # The slot number.
---@return FluidStack # A table describing the fluid in the container.
function transposer.getFluidInContainerInSlot(side, slot) end

---Get the capacity of a fluid container in a specific slot.
---@param side integer # The side of the inventory.
---@param slot integer # The slot number.
---@return integer # The capacity of the fluid container.
function transposer.getContainerCapacityInSlot(side, slot) end

---Get the fluid level in a container.
---@param side integer # The side of the inventory.
---@param slot integer # The slot number.
---@return integer # The fluid level in the container.
function transposer.getContainerLevelInSlot(side, slot) end