---@meta _

---@class fluid_storagebus: BaseStorageBus
---@field type "fluid_storagebus"
local fluidStoragebus = {}

---Configure the storage bus pointing in the specified direction to store fluid stacks
---matching the fluid in a database entry.
---@param side integer # The side of the storage bus.
---@param slot? integer # The slot number to configure.
---@param database? string # The address of a database.
---@param entry? integer # The slot number of the fluid in the database.
---@return boolean # True if success.
function fluidStoragebus.setStorageConfiguration(side, slot, database, entry) end

---Configure the storage bus pointing in the specified direction to store fluid stacks
---matching a descriptor table.
---@param side integer # The side of the storage bus.
---@param slot? integer # The slot number to configure.
---@param detail? table # A table describing the fluid to store.
---@return boolean # True if success.
function fluidStoragebus.setStorageConfiguration(side, slot, detail) end
