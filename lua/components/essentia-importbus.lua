---@meta _

---The ME essentia import bus from Thaumic Energistics.
---@class essentia_importbus: BaseImportBus
---@field type "essentia_importbus"
local essentiaImportbus = {}

---Get the configuration of the import bus pointing in the specified direction.
---@param side? number
---@param slot? number
---@return string
function essentiaImportbus.getImportConfiguration(side, slot) end

---@field setImportConfiguration any # function(side:number[, slot:number][, aspect:string OR detail:table]):boolean -- Configure the import bus pointing in the specified direction to import essentia matching the specified type.
