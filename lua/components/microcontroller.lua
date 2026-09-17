---@meta _

---A microcontroller, seen from another machine.
---@class microcontroller: BaseComponent
---@field type "microcontroller"
local microcontroller = {}

---Starts the microcontroller.
---@return boolean # True if the state changed.
function microcontroller.start() end

---Stops the microcontroller.
---@return boolean # True if the state changed.
function microcontroller.stop() end

---Returns whether the microcontroller is running.
---@return boolean
function microcontroller.isRunning() end

---Returns the reason the microcontroller crashed, if applicable.
---@return string # The last error, or an empty string.
function microcontroller.lastError() end

---Get whether network messages are sent via the specified side.
---@param side integer # The side to check.
---@return boolean
function microcontroller.isSideOpen(side) end

---Set whether network messages are sent via the specified side.
---@param side integer # The side to configure.
---@param open boolean # Whether to send messages via that side.
---@return boolean # The previous value.
function microcontroller.setSideOpen(side, open) end
