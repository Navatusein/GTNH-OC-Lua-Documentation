---@meta _

---What every ME export bus has regardless of what it moves.
---The configuration methods differ per bus and are declared on each component.
---@class BaseExportBus: BaseEnergyHandler
local baseExportBus = {}

---Get the ore filter of the export bus pointing in the specified direction.
---@param side number
---@return boolean
function baseExportBus.getExportOreFilter(side) end

---Get the number of valid slots in this export bus.
---@param side number
---@return number
function baseExportBus.getExportSlotSize(side) end

---Set the ore filter of the export bus pointing in the specified direction.
---@param side number
---@param filter string
---@return boolean
function baseExportBus.setExportOreFilter(side, filter) end
