---@meta _

---An energised Forestry alveary.
---
---Besides the bee housing and RF energy methods it also answers as an IC2 energy sink.
---The name is derived from the block or from its inventory, not declared by any driver
---- see the note on derived names in CLAUDE.md.
---@class alveary: BaseBeeHousing, BaseEnergyHandler
---@field type "alveary"
local alveary = {}

---Get the IC2 energy sink tier of this block.
---
---This comes from the IC2 energy sink driver, and the mod provides no description for it.
---@return number
function alveary.getSinkTier() end
