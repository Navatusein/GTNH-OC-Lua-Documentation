---@meta _

---What every ME import bus has regardless of what it moves.
---The configuration methods differ per bus and are declared on each component.
---@class BaseImportBus: BaseEnergyHandler
local baseImportBus = {}

---Get the ore filter of the import bus pointing in the specified direction.
---@param side number
---@return boolean
function baseImportBus.getImportOreFilter(side) end

---Get the number of valid slots in this import bus.
---@param side number
---@return number
function baseImportBus.getImportSlotSize(side) end

---Set the ore filter of the import bus pointing in the specified direction.
---@param side number
---@param filter string
---@return boolean
function baseImportBus.setImportOreFilter(side, filter) end
