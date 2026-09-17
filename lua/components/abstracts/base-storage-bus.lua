---@meta _

---The part of the ME storage bus API that is the same for items, fluids and essentia.
---`setStorageConfiguration` differs per bus and is declared on each component.
---@class BaseStorageBus: aemultipart
local baseStorageBus = {}

---Get the configuration of the storage bus pointing in the specified direction.
---@param side integer # The side of the storage bus.
---@param slot? integer # The slot number to read the configuration of.
---@return ItemStack # The descriptor of the configured stack.
function baseStorageBus.getStorageConfiguration(side, slot) end

---Get the number of valid configuration slots in the storage bus pointing in the specified direction.
---@param side integer # The side of the storage bus.
---@return integer # The number of valid slots.
function baseStorageBus.getStorageSlotSize(side) end

---Get the ore dictionary filter of the storage bus pointing in the specified direction.
---@param side integer # The side of the storage bus.
---@return string # The current ore filter.
function baseStorageBus.getStorageOreFilter(side) end

---Set the ore dictionary filter of the storage bus pointing in the specified direction.
---Requires an ore dictionary filter upgrade installed in the bus.
---@param side integer # The side of the storage bus.
---@param filter string # The ore filter to set.
---@return boolean # True if success.
function baseStorageBus.setStorageOreFilter(side, filter) end
