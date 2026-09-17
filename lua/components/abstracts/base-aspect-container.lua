---@meta _

---The OpenComputers Thaumcraft driver for `IAspectContainer`: anything that stores
---essentia, such as a warded jar or an alembic.
---@class BaseAspectContainer: BaseComponent
local baseAspectContainer = {}

---Get amount of specific aspect stored in this block
---@param aspect string
---@return number
function baseAspectContainer.getAspectCount(aspect) end

---Get the Aspects stored in the block
---@return table
function baseAspectContainer.getAspects() end
