---@meta _

---The ME upgrade, installed in a robot or a drone.
---
---It carries the ME network API but not the essentia part of it and no RF energy methods.
---@class upgrade_me: CommonNetworkAPI
---@field type "upgrade_me"
local upgradeMe = {}

---Checks if the upgrade is linked to the AE network.
---@return boolean # True if linked, false otherwise.
function upgradeMe.isLinked() end

---Transfers selected items to the AE system.
---@param amount? integer # The number of items to transfer. Defaults to all selected items.
---@return integer # The number of transferred items.
function upgradeMe.sendItems(amount) end

---Transfers selected fluids to the AE system.
---@param amount? integer # The amount of fluid to transfer. Defaults to all selected fluid.
---@return integer # The amount of transferred fluid.
function upgradeMe.sendFluids(amount) end

---Requests items from the AE system.
---@param database string # The address of the database component.
---@param entry integer # The entry number in the database.
---@param amount? integer # The amount of items to request. Defaults to 1.
---@return integer # The number of retrieved items.
function upgradeMe.requestItems(database, entry, amount) end

---Requests fluids from the AE system.
---@param database string # The address of the database component.
---@param entry integer # The entry number in the database.
---@param amount? integer # The amount of fluid to request. Defaults to 1.
---@return integer # The amount of retrieved fluid.
function upgradeMe.requestFluids(database, entry, amount) end
