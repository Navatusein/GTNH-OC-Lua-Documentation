---@meta _

---A vanilla furnace, seen through an adapter.
---@class furnace: BaseComponent
---@field type "furnace"
local furnace = {}

---The number of ticks that the furnace will keep burning from the last consumed fuel.
---@return number
function furnace.getBurnTime() end

---The number of ticks that the current item has been cooking for.
---@return number
function furnace.getCookTime() end

---The number of ticks that the currently burning fuel lasts in total.
---@return number
function furnace.getCurrentItemBurnTime() end

---Get whether the furnace is currently active.
---@return boolean
function furnace.isBurning() end
