---@meta _

---@class aemultipart: BaseComponent 
---@field type "aemultipart"
local aemultipart = {}

---Returns the amount of stored energy for the given side.
---@param direction? sides # The side to check, defaults to 6
---@return number # how much energy is stored on that side.
function aemultipart.getEnergyStored(direction) end

---Returns the maximum amount of stored energy for the given side.
---@param direction? sides # The side to check, defaults to 6
---@return number # how much energy is stored on that side.
function aemultipart.getMaxEnergyStored(direction) end

---Returns whether this component can receive energy.
---@return boolean # True if the block can receive energy
function aemultipart.isEnergyReceiver()	end

---Returns whether this component can provide energy.
---@return boolean # True if the block can provide energy.
function aemultipart.isEnergyProvider() end
