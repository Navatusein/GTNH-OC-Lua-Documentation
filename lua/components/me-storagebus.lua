---@meta _

---@class me_storagebus: BaseStorageBus
---@field type "me_storagebus"
local meStoragebus = {}

---Configure the storage bus pointing in the specified direction to store item stacks
---matching the item in a database entry.
---@param side integer # The side of the storage bus.
---@param slot? integer # The slot number to configure.
---@param database? string # The address of a database.
---@param entry? integer # The slot number of the item in the database.
---@return boolean # True if success.
function meStoragebus.setStorageConfiguration(side, slot, database, entry) end

---Configure the storage bus pointing in the specified direction to store item stacks
---matching a descriptor table.
---@param side integer # The side of the storage bus.
---@param slot? integer # The slot number to configure.
---@param detail? table # A table describing the item to store.
---@return boolean # True if success.
function meStoragebus.setStorageConfiguration(side, slot, detail) end
