---@meta _

---@class master_ritual_stone: BaseComponent
---@field type "master_ritual_stone"
local masterRitualStone = {}

---Get the name of the player owning this master ritual stone.
---@return string
function masterRitualStone.getOwner() end

---Get the current ritual.
---@return string
function masterRitualStone.getCurrentRitual() end

---Get the remaining cooldown.
---@return integer
function masterRitualStone.getCooldown() end

---Get the running time.
---@return integer
function masterRitualStone.getRunningTime() end

---Get whether the tanks are empty.
---@return boolean
function masterRitualStone.areTanksEmpty() end
