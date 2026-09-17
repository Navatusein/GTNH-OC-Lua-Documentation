---@meta _

---The Thaumcraft runic matrix of an infusion altar.
---@class infusion_matrix: BaseAspectContainer
---@field type "infusion_matrix"
local infusionMatrix = {}

---Get the instability.
---@return number
function infusionMatrix.getInstability() end

---Get the symmetry.
---@return number
function infusionMatrix.getSymmetry() end

---Return whether the matrix is active
---@return boolean
function infusionMatrix.isActive() end

---Return whether the matrix is crafting
---@return boolean
function infusionMatrix.isCrafting() end
