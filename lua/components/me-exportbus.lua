---@meta _

---The ME export bus.
---@class me_exportbus: BaseExportBus
---@field type "me_exportbus"
local meExportbus = {}

---Make the export bus facing the specified direction perform a single export operation into the specified slot.
---@param side number
---@param slot number
---@return boolean
function meExportbus.exportIntoSlot(side, slot) end

---Get the configuration of the export bus pointing in the specified direction.
---@param side number
---@param slot? number
---@return boolean
function meExportbus.getExportConfiguration(side, slot) end

---Configure the export bus pointing in the specified direction to export item stacks matching the specified descriptor.
---@param side? number
---@param slot? number
---@param database? string
---@param entry? number
---@return boolean
function meExportbus.setExportConfiguration(side, slot, database, entry) end

---Configure the export bus pointing in the specified direction to export item stacks matching the specified descriptor.
---@param side? number
---@param slot? number
---@param detail? table
---@return boolean
function meExportbus.setExportConfiguration(side, slot, detail) end
