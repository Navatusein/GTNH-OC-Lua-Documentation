---@meta _

---The Bartworks Energy Cluster storage block.
---@class bec_storage: BaseGregTechMachine
---@field type "bec_storage"
local becStorage = {}

---Returns the field strength of this storage node.
---@return number
function becStorage.getFieldStrength() end

---Returns stored condensate as a table mapping fluid names to amounts.
---@return table
function becStorage.getStoredCondensate() end

---Sets the field strength of this storage node.
---@param strength number
function becStorage.setFieldStrength(strength) end
