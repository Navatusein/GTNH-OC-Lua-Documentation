---@meta _

---An EnderIO machine.
---
---The name is derived from the block, not declared by a driver.
---@class enderio_machine: BaseEnergyHandler
---@field type "enderio_machine"
local enderioMachine = {}

---Returns the current IO mode on the given side
---@param side number
---@return string
function enderioMachine.getIOMode(side) end

---Returns the power use/production per tick
---@return number
function enderioMachine.getPowerPerTick() end

---Returns the progress of the machine
---@return boolean
function enderioMachine.getProgress() end

---Returns the current Redstone control mode
---@return string
function enderioMachine.getRedstoneMode() end

---@field io_modes any # table: 00000219969c98e0

---Returns whether the machine is currently active
---@return boolean
function enderioMachine.isActive() end

---@field redstone_modes any # table: 00000219969c9ca0

---Sets the IO mode on the given side
---@param side number
---@param mode string
function enderioMachine.setIOMode(side, mode) end

---Sets the Redstone control mode
---@param mode string
function enderioMachine.setRedstoneMode(mode) end
