---@meta _

---@class piston: BaseComponent
---@field type "piston"
local piston = {}

---Tries to push the block on the specified side of the device the upgrade is installed in.
---@param side? integer # The side to push. Defaults to front.
---@return boolean # True if a block was pushed.
function piston.push(side) end
