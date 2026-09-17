---@meta _

---The ME import bus.
---@class me_importbus: BaseImportBus
---@field type "me_importbus"
local meImportbus = {}

---Get the configuration of the import bus pointing in the specified direction.
---@param side? number
---@param slot? number
---@return boolean
function meImportbus.getImportConfiguration(side, slot) end

---Configure the import bus pointing in the specified direction to import item stacks matching the specified descriptor.
---@param side? number
---@param slot? number
---@param database? string
---@param entry? number
---@return boolean
function meImportbus.setImportConfiguration(side, slot, database, entry) end

---Configure the import bus pointing in the specified direction to import item stacks matching the specified descriptor.
---@param side? number
---@param slot? number
---@param detail? table
---@return boolean
function meImportbus.setImportConfiguration(side, slot, detail) end
