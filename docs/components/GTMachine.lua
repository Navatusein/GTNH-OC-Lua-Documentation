---@meta _

---@class gt_machine: BaseComponent
---@field type 'gt_machine'
local gtMachine = {}

---Returns the amount of electricity contained in this Block, in EU units! (As a string for HUGE amounts.)
---@return string storedEuString
function gtMachine.getStoredEUString() end

---Returns the average EU input of this block
---@return number averageInput
function gtMachine.getEUInputAverage() end

---Gets the Output in EU/p.
---@return number outputVoltage
function gtMachine.getOutputVoltage() end

---Returns the machine's name
---@return string name
function gtMachine.getName() end

---Returns whether the machine is currently active
---@return boolean isActive
function gtMachine.isMachineActive() end

---Returns the EU stored in this block
---@return number euStored
function gtMachine.getEUStored() end

---Returns the amount of electricity containable in this Block, in EU units!
---@return number euCapacity
function gtMachine.getEUCapacity() end

---Returns the steam stored in this block
---@return number steamStored
function gtMachine.getSteamStored() end

---Returns sensor information about this block
---@return string[] sensorLines
function gtMachine.getSensorInformation() end

---Returns the average EU output of this block
---@return number averageOutput
function gtMachine.getEUOutputAverage() end

---Returns the amount of electricity containable in this Block, in EU units! (As a string for HUGE amounts.)
---@return string euCapacityString
function gtMachine.getEUCapacityString() end

---Returns machine coordinates
---@return {[1]:number,[2]:number,[3]:number} coordinates
function gtMachine.getCoordinates() end

---Returns the amount of Electricity, accepted by this Block the last 5 ticks as Average.
---@return number averageInput
function gtMachine.getAverageElectricInput() end

---Gets the maximum Input in EU/p.
---@return number maxInput
function gtMachine.getInputVoltage() end

-- Gets the amount of Energy Packets per tick.
---@return number packetPerTick
function gtMachine.getOutputAmperage() end

---Sets whether this block is currently allowed to work
---@param enabled boolean
---@return number packetPerTick
function gtMachine.setWorkAllowed(enabled) end

---Returns the name of this block's owner
---@return string ownerName
function gtMachine.getOwnerName() end

---Returns true if the machine currently has work to do
---@return boolean hasWork
function gtMachine.hasWork() end

---Returns the amount of Steam contained in this Block, in EU units!
---@return number storedSteamAsEu
function gtMachine.getStoredSteam() end

---Returns the current progress of this block in ticks
---@return number progress
function gtMachine.getWorkProgress() end

---Returns the max EU that can be stored in this block
---@return number euCapacity
function gtMachine.getEUMaxStored() end

---Returns the amount of Electricity, outputted by this Block the last 5 ticks as Average.
---@return number averageElectricOutput
function gtMachine.getAverageElectricOutput() end

---Returns the amount of electricity contained in this Block, in EU units!
---@return number storedEU
function gtMachine.getStoredEU() end

---Returns whether this block is currently allowed to work
---@return boolean isAllowed
function gtMachine.isWorkAllowed() end

---Returns the max progress of this block in ticks
---@return number maxProgress
function gtMachine.getWorkMaxProgress() end

---Returns the amount of Steam containable in this Block, in EU units!
---@return number steamCapacityAsEU
function gtMachine.getSteamCapacity() end

---Returns the max steam that can be stored in this block
---@return number steamCapacity
function gtMachine.getSteamMaxStored() end