---@meta _

---The Leash Upgrade, which lets a robot or a drone drag mobs along.
---
---Leashed entities follow the device and are released when it is broken or the
---upgrade is removed. Written from the mod source; not verified against a dump yet.
---@class leash: BaseComponent
---@field type "leash"
local leash = {}

---Tries to put an entity on the specified side of the device onto a leash.
---@param side integer # The side to look for an entity on.
---@return boolean # True if an entity was leashed.
function leash.leash(side) end

---Unleashes all currently leashed entities.
function leash.unleash() end
