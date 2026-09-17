---@meta _

---A BuildCraft pipe.
---@class bc_pipe: BaseEnergyHandler
---@field type "bc_pipe"
local bcPipe = {}

---Returns the type of the pipe.
---@return string
function bcPipe.getPipeType() end

---Returns whether the pipe has a gate on the specified side.
---@param side number
---@return boolean
function bcPipe.hasGate(side) end

---Returns whether the pipe is connected to something on the specified side.
---@param side number
---@return boolean
function bcPipe.isPipeConnected(side) end

---Returns whether the wired with the given color is active.
---@param color string
---@return boolean
function bcPipe.isWireActive(color) end

---Returns whether the pipe is wired with the given color.
---@param color string
---@return boolean
function bcPipe.isWired(color) end
