---@meta _

---What the Computronics GregTech drivers add on top of the energy container:
---identity, work progress and sensor information.
---@class BaseGregTechMachine: BaseGregTechEnergy
local baseGregTechMachine = {}

---Returns machine coordinates
---@return table
function baseGregTechMachine.getCoordinates() end

---Returns the average EU input of this block
---@return number
function baseGregTechMachine.getEUInputAverage() end

---Returns the max EU that can be stored in this block
---@return number
function baseGregTechMachine.getEUMaxStored() end

---Returns the average EU output of this block
---@return number
function baseGregTechMachine.getEUOutputAverage() end

---Returns the EU stored in this block
---@return number
function baseGregTechMachine.getEUStored() end

---Returns the machine's name
---@return string
function baseGregTechMachine.getName() end

---Returns the name of this block's owner
---@return string
function baseGregTechMachine.getOwnerName() end

---Returns the value of all parameters
---
---**Parametrized machines only** - multiblocks with a parameter screen.
---@return table
function baseGregTechMachine.getParameters() end

---Returns sensor information about this block
---@return table
function baseGregTechMachine.getSensorInformation() end

---Returns the max steam that can be stored in this block
---@return number
function baseGregTechMachine.getSteamMaxStored() end

---Returns the steam stored in this block
---@return number
function baseGregTechMachine.getSteamStored() end

---Returns the max progress of this block
---@return number
function baseGregTechMachine.getWorkMaxProgress() end

---Returns the current progress of this block
---@return number
function baseGregTechMachine.getWorkProgress() end

---Returns true if the machine currently has work to do
---@return boolean
function baseGregTechMachine.hasWork() end

---Returns whether the machine is currently active
---@return boolean
function baseGregTechMachine.isMachineActive() end

---Returns whether this block is currently allowed to work
---@return boolean
function baseGregTechMachine.isWorkAllowed() end

---Sets a parameter
---
---**Parametrized machines only** - multiblocks with a parameter screen.
---@param key string
---@param val any
function baseGregTechMachine.setParameter(key, val) end

---Sets whether this block is currently allowed to work
---@param work boolean
function baseGregTechMachine.setWorkAllowed(work) end
