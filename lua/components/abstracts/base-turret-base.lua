---@meta _

---@class BaseTurretBase: BaseComponent
local baseTurretBase = {}

---Adds a trusted player to the turret's trust list.
---@param name string # The player's name.
---@param canOpenGUI boolean|nil # Whether the player can open the GUI (default: false).
---@param canChangeTargeting boolean|nil # Whether the player can change targeting settings (default: false).
---@param admin boolean|nil # Whether the player has admin permissions for the turret (default: false).
---@return string result # The result of the operation.
function baseTurretBase.addTrustedPlayer(name, canOpenGUI, canChangeTargeting, admin) end

---Removes a trusted player from the turret's trust list.
---@return string result # The result of the operation.
function baseTurretBase.removeTrustedPlayer() end

---Gets a list of trusted players for this turret base.
---@return table trustedPlayers # A table containing names of trusted players.
function baseTurretBase.getTrustedPlayers() end

---Gets the owner of the turret base.
---@return string owner # The name of the owner.
function baseTurretBase.getOwner() end

---Gets the current energy stored in the turret base.
---@return integer energy # The amount of stored energy.
function baseTurretBase.getCurrentEnergyStorage() end

---Gets the maximum energy capacity of the turret base.
---@return integer maxEnergy # The maximum amount of energy the turret can store.
function baseTurretBase.getMaxEnergyStorage() end

---Checks whether the turret is currently active.
---@return boolean isActive # True if the turret is active, false otherwise.
function baseTurretBase.getActive() end

---Sets whether the turret should attack players.
---@param value boolean # True to enable attacking players, false to disable.
---@return boolean success # True if the setting was applied successfully.
function baseTurretBase.setAttacksPlayers(value) end

---Checks whether the turret is set to attack players.
---@return boolean isAttacking # True if the turret attacks players, false otherwise.
function baseTurretBase.isAttacksPlayers() end

---Sets whether the turret should attack hostile mobs.
---@param value boolean # True to enable attacking hostile mobs, false to disable.
---@return boolean success # True if the setting was applied successfully.
function baseTurretBase.setAttacksMobs(value) end

---Checks whether the turret is set to attack hostile mobs.
---@return boolean isAttacking # True if the turret attacks hostile mobs, false otherwise.
function baseTurretBase.isAttacksMobs() end

---Sets whether the turret should attack neutral mobs.
---@param value boolean # True to enable attacking neutral mobs, false to disable.
---@return boolean success # True if the setting was applied successfully.
function baseTurretBase.setAttacksNeutrals(value) end

---Checks whether the turret is set to attack neutral mobs.
---@return boolean isAttacking # True if the turret attacks neutral mobs, false otherwise.
function baseTurretBase.isAttacksNeutrals() end

---Toggles the redstone inversion state of the turret.
---@return boolean newState # The new inversion state after toggling.
function baseTurretBase.setInverted() end

---Gets the current redstone inversion state.
---@return boolean isInverted # True if the turret's redstone signal is inverted, false otherwise.
function baseTurretBase.getInverted() end

---Gets the current redstone state of the turret.
---@return boolean redstoneState # True if redstone is active, false otherwise.
function baseTurretBase.getRedstone() end
