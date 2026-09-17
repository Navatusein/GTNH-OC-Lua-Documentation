---@meta _

---The Net Splitter, a network cable whose sides can be opened and closed.
---@class net_splitter: BaseComponent
---@field type "net_splitter"
local netSplitter = {}

---Close the side, returns true if it changed to close.
---@param side number
---@return boolean
function netSplitter.close(side) end

---Returns current open/close state of all sides in an array, indexed by direction.
---@return table
function netSplitter.getSides() end

---Open the side, returns true if it changed to open.
---@param side number
---@return boolean
function netSplitter.open(side) end

---set open state (true/false) of all sides in an array; index by direction. Returns previous states
---@param settings table
---@return table
function netSplitter.setSides(settings) end
