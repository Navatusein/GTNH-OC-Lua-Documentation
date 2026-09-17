---@meta _

---An EnderIO machine.
---
---The name is derived from the block, not declared by a driver.
---@class enderio_machine: BaseEnergyHandler
---@field type "enderio_machine"
---@field io_modes table # Every IO mode this machine accepts, as a table of names.
---@field redstone_modes table # Every Redstone control mode this machine accepts, as a table of names.
local enderioMachine = {}

---Returns whether the machine is currently active.
---@return boolean
function enderioMachine.isActive() end

---Returns the progress of the machine.
---@return boolean
function enderioMachine.getProgress() end

---Returns the power use or production per tick.
---@return number
function enderioMachine.getPowerPerTick() end

---Returns the current IO mode on the given side.
---@param side number # The side to read.
---@return string # One of the names in `io_modes`.
function enderioMachine.getIOMode(side) end

---Sets the IO mode on the given side.
---@param side number # The side to configure.
---@param mode string # One of the names in `io_modes`.
function enderioMachine.setIOMode(side, mode) end

---Returns the current Redstone control mode.
---@return string # One of the names in `redstone_modes`.
function enderioMachine.getRedstoneMode() end

---Sets the Redstone control mode.
---@param mode string # One of the names in `redstone_modes`.
function enderioMachine.setRedstoneMode(mode) end
