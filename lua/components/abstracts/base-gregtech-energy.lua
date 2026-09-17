---@meta _

---The GregTech energy container methods, from the OpenComputers driver of the
---same name. Every GregTech machine carries them; blocks that only store energy
---carry these and nothing else.
---@class BaseGregTechEnergy: BaseComponent
local baseGregTechEnergy = {}

---Returns the amount of Electricity, accepted by this Block the last 5 ticks as Average.
---@return number
function baseGregTechEnergy.getAverageElectricInput() end

---Returns the amount of Electricity, outputted by this Block the last 5 ticks as Average.
---@return number
function baseGregTechEnergy.getAverageElectricOutput() end

---Returns the amount of electricity containable in this Block, in EU units!
---@return number
function baseGregTechEnergy.getEUCapacity() end

---Returns the amount of electricity containable in this Block, in EU units! (As a string for HUGE amounts.)
---@return number
function baseGregTechEnergy.getEUCapacityString() end

---Gets the maximum Input in EU/p.
---@return number
function baseGregTechEnergy.getInputVoltage() end

---Gets the amount of Energy Packets per tick.
---@return number
function baseGregTechEnergy.getOutputAmperage() end

---Gets the Output in EU/p.
---@return number
function baseGregTechEnergy.getOutputVoltage() end

---Returns the amount of Steam containable in this Block, in EU units!
---@return number
function baseGregTechEnergy.getSteamCapacity() end

---Returns the amount of electricity contained in this Block, in EU units!
---@return number
function baseGregTechEnergy.getStoredEU() end

---Returns the amount of electricity contained in this Block, in EU units! (As a string for HUGE amounts.)
---@return string
function baseGregTechEnergy.getStoredEUString() end

---Returns the amount of Steam contained in this Block, in EU units!
---@return number
function baseGregTechEnergy.getStoredSteam() end
