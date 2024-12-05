---@meta _

---@class me_exportbus: aemultipart
---@field type "me_exportbus"
local meExportbus = {}

---Configure the export bus pointing in the specified direction to export item stacks matching the specified descriptor.
---@param side sides # The side of the export bus.
---@param slot integer # The slot number to configure.
---@param database string # The address of a database.
---@param entry integer # The slot number of the item in the database.
---@return boolean # True if success 
function meExportbus.setExportConfiguration(side, slot, database, entry) end

---Configure the export bus pointing in the specified direction to export item stacks matching the specified descriptor.
---@param side sides # The side of the export bus.
---@param database string # The address of a database.
---@param entry integer # The slot number of the item in the database.
---@return boolean # True if success
function meExportbus.setExportConfiguration(side, database, entry) end

---Get the configuration of the export bus pointing in the specified direction.
---@param side sides # The side of the export bus.
---@param slot? integer # The slot number of the item to get the configuration of.
---@return ItemStack # The descriptor for the item to view.
function meExportbus.getExportConfiguration(side, slot) end

---Make the export bus facing the specified direction perform a single export operation into the specified slot.
---You can use a redstone control upgrade set to only on signal to make the export bus only export when called on by OC.
---@param side sides # The side of the export bus.
---@param slot integer # The slot number in the target destination
---@return boolean # True if successful
function meExportbus.exportIntoSlot(side, slot) end
