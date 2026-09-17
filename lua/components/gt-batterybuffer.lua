---@meta _

---A GregTech battery buffer.
---
---The name is derived from the block, not declared by a driver.
---@class gt_batterybuffer: BaseGregTechMachine
---@field type "gt_batterybuffer"
local gtBatterybuffer = {}

---Returns the amount of stored EU in the battery in the specified slot
---@param slot number
---@return number
function gtBatterybuffer.getBatteryCharge(slot) end

---Returns the max amount of stored EU in the battery in the specified slot
---@param slot number
---@return number
function gtBatterybuffer.getMaxBatteryCharge(slot) end
