---@meta _

---The Energy Pylon of a Draconic Evolution energy core.
---
---Unlike the RF energy handler methods of other blocks, these report the whole core,
---which can hold far more than a 32 bit integer, so the numbers come back as doubles
---and lose precision at very large capacities.
---@class draconic_rf_storage: BaseComponent
---@field type "draconic_rf_storage"
local draconicRfStorage = {}

---Returns the energy stored in the core.
---@return number
function draconicRfStorage.getEnergyStored() end

---Returns the capacity of the core.
---@return number
function draconicRfStorage.getMaxEnergyStored() end
