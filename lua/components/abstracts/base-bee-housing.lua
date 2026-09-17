---@meta _

---The Forestry bee housing driver.
---Several blocks expose it under names derived from the block itself, because no
---driver declares a preferred name for them.
---@class BaseBeeHousing: BaseComponent
local baseBeeHousing = {}

---Can the bees breed?
---@return boolean
function baseBeeHousing.canBreed() end

---Get the full breeding list thingy.
---@return table
function baseBeeHousing.getBeeBreedingData() end

---Get the parents for a particular mutation
---@param beeName string
---@return table
function baseBeeHousing.getBeeParents(beeName) end

---Get the drone
---@return table
function baseBeeHousing.getDrone() end

---Get the queen
---@return table
function baseBeeHousing.getQueen() end

---Get all known bees mutations
---@return table
function baseBeeHousing.listAllSpecies() end
