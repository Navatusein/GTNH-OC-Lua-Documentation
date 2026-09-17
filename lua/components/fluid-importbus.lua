---@meta _

---The ME fluid import bus from AE2 Fluid Craft Rework.
---@class fluid_importbus: BaseImportBus
---@field type "fluid_importbus"
local fluidImportbus = {}

---Get the configuration of the import bus pointing in the specified direction.
---@param side? number
---@param slot? number
---@return boolean
function fluidImportbus.getImportConfiguration(side, slot) end

---Configure the import bus pointing in the specified direction to import item stacks matching the specified descriptor.
---@param side? number
---@param slot? number
---@param database? string
---@param entry? number
---@return boolean
function fluidImportbus.setImportConfiguration(side, slot, database, entry) end

---Configure the import bus pointing in the specified direction to import item stacks matching the specified descriptor.
---@param side? number
---@param slot? number
---@param detail? table
---@return boolean
function fluidImportbus.setImportConfiguration(side, slot, detail) end
