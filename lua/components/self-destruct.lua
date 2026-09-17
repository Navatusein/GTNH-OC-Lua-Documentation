---@meta _

---The Self Destruct Card from Computronics.
---@class self_destruct: BaseComponent
---@field type "self_destruct"
local selfDestruct = {}

---Starts the countdown; Will be ticking down until the time is reached. 5 seconds by default. Returns the time set
---@param time? number
---@return number
function selfDestruct.start(time) end

---Returns the time in seconds left
---@return number
function selfDestruct.time() end
