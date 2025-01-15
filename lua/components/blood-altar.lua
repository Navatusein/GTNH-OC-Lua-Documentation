---@meta _

---@class blood_altar: BaseComponent
---@field type "blood_altar"
local bloodAltar = {}

---Get the capacity.
---@return integer
function bloodAltar.getCapacity() end

---Get the amount of blood currently contained by this altar.
---@return integer
function bloodAltar.getCurrentBlood() end

---Get the current tier.
---@return integer
function bloodAltar.getTier() end

---Get the progress.
---@return integer
function bloodAltar.getProgress() end

---Get the sacrifice multiplier.
---@return integer
function bloodAltar.getSacrificeMultiplier() end

---Get the self sacrifice multiplier.
---@return number
function bloodAltar.getSelfSacrificeMultiplier() end

---Get the orb multiplier.
---@return number
function bloodAltar.getOrbMultiplier() end

---Get the dislocation multiplier.
---@return number
function bloodAltar.getDislocationMultiplier() end

---Get IO buffer capacity.
---@return integer
function bloodAltar.getBufferCapacity() end
