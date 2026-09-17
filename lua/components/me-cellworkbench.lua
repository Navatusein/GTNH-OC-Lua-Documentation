---@meta _

---The ME Cell Workbench.
---@class me_cellworkbench: BaseComponent
---@field type "me_cellworkbench"
local meCellworkbench = {}

---Clears every partition slot on the inserted cell.
---@return boolean
function meCellworkbench.clearPartitions() end

---Returns details about the inserted cell item itself. Returns nil if no cell is inserted. Essentia cells return limited info.
---@return table
function meCellworkbench.getCell() end

---Returns the inserted cell's type ("item", "fluid", "essentia", ...). Returns nil if no cell is inserted.
---@return string
function meCellworkbench.getCellType() end

---Returns the workbench's copy mode: "clear" or "keep" (whether the partitions are cleared or remains when a cell is removed).
---@return string
function meCellworkbench.getCopyMode() end

---Returns the inserted cell's ore filter string. Returns empty string (not nil) if unset.
---@return string
function meCellworkbench.getOreFilter() end

---Returns every partition slot as a table keyed by slot number (1-based). Empty slots are omitted.
---@return table
function meCellworkbench.getPartition() end

---Returns the cell's restriction as (types, amount). (0, 0) means unrestricted.
---@return number, number
function meCellworkbench.getRestriction() end

---Returns whether a storage cell is currently inserted.
---@return boolean
function meCellworkbench.hasCell() end

---Sets the workbench's copy mode: "clear" or "keep".
---@param mode string
---@return boolean
function meCellworkbench.setCopyMode(mode) end

---Sets the inserted cell's ore filter string.
---@param filter string
---@return boolean
function meCellworkbench.setOreFilter(filter) end

---Sets the partition in the given slot (1-based). Accepts a table describing the item (e.g. name, damage). Omit the item to clear the slot.
---@param slot? number
---@param item? table
---@return boolean
function meCellworkbench.setPartition(slot, item) end

---Sets the cell's restriction. (0, 0) means unrestricted.
---@param types number
---@param amount number
---@return boolean
function meCellworkbench.setRestriction(types, amount) end
