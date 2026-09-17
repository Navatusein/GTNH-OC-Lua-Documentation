---@meta _

---@class essentia_storagebus: BaseStorageBus
---@field type "essentia_storagebus"
local essentiaStoragebus = {}

---Configure the storage bus pointing in the specified direction to store the given aspect.
---@param side integer # The side of the storage bus.
---@param slot? integer # The slot number to configure.
---@param aspect? string|table # The name of the aspect, or a table describing it.
---@return boolean # True if success.
function essentiaStoragebus.setStorageConfiguration(side, slot, aspect) end
