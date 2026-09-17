---@meta _

---The ME essentia export bus from Thaumic Energistics.
---@class essentia_exportbus: BaseExportBus
---@field type "essentia_exportbus"
local essentiaExportbus = {}

---Get the configuration of the export bus pointing in the specified direction.
---@param side? number
---@param slot? number
---@return string
function essentiaExportbus.getExportConfiguration(side, slot) end

---Get whether or not essentia exported into a void jar will allow voiding
---@param side number
---@return boolean
function essentiaExportbus.getVoidAllowed(side) end

---@field setExportConfiguration any # function(side:number[, slot:number][, aspect:string OR detail:table]):boolean -- Configure the export bus pointing in the specified direction to export essentia matching the specified type.

---Set void mode
---@param side number
---@param allowed boolean
---@return boolean
function essentiaExportbus.setVoidAllowed(side, allowed) end
