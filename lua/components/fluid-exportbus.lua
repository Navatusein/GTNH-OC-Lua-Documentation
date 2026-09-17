---@meta _

---The ME fluid export bus from AE2 Fluid Craft Rework.
---@class fluid_exportbus: BaseExportBus
---@field type "fluid_exportbus"
local fluidExportbus = {}

---Get the configuration of the export bus pointing in the specified direction.
---@param side number
---@param slot? number
---@return boolean
function fluidExportbus.getExportConfiguration(side, slot) end

---Configure the export bus pointing in the specified direction to export item stacks matching the specified descriptor.
---@param side? number
---@param slot? number
---@param database? string
---@param entry? number
---@return boolean
function fluidExportbus.setExportConfiguration(side, slot, database, entry) end

---Configure the export bus pointing in the specified direction to export item stacks matching the specified descriptor.
---@param side? number
---@param slot? number
---@param detail? table
---@return boolean
function fluidExportbus.setExportConfiguration(side, slot, detail) end
