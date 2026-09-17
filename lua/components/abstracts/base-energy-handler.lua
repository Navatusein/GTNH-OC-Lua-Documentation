---@meta _

---The RF energy methods of the CoFH `energy_handler` driver.
---
---They attach to any block whose tile implements the RedstoneFlux energy interfaces,
---so they show up merged into all sorts of unrelated components — AE2 cable buses and
---ME chests, energised Forestry alvearies, and so on. Whether a given block has them
---can only be told from a dump.
---@class BaseEnergyHandler: BaseComponent
local baseEnergyHandler = {}

---Returns the amount of stored energy for the given side.
---@param direction? integer # The side to check, defaults to 6.
---@return number # How much energy is stored on that side.
function baseEnergyHandler.getEnergyStored(direction) end

---Returns the maximum amount of stored energy for the given side.
---@param direction? integer # The side to check, defaults to 6.
---@return number # How much energy can be stored on that side.
function baseEnergyHandler.getMaxEnergyStored(direction) end

---Returns whether this component can receive energy.
---@return boolean # True if the block can receive energy.
function baseEnergyHandler.isEnergyReceiver() end

---Returns whether this component can provide energy.
---@return boolean # True if the block can provide energy.
function baseEnergyHandler.isEnergyProvider() end
