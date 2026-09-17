---@meta _

---The Chunkloader Upgrade.
---@class chunkloader: BaseComponent
---@field type "chunkloader"
local chunkloader = {}

---Gets whether the chunkloader is currently active.
---@return boolean
function chunkloader.isActive() end

---Enables or disables the chunkloader.
---@param enabled boolean # Whether the chunk should stay loaded.
---@return boolean # True if the active state changed.
function chunkloader.setActive(enabled) end
