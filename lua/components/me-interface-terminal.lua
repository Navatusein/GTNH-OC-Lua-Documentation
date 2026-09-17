---@meta _

---The ME Interface Terminal.
---@class me_interface_terminal: aemultipart
---@field type "me_interface_terminal"
local meInterfaceTerminal = {}

---Returns the amount of stored energy for the given side.
---@param direction? number
---@return number
function meInterfaceTerminal.getEnergyStored(direction) end

---Returns a list of all interface
---@return table
function meInterfaceTerminal.getInterfaces() end

---Returns a list of interfaces at the specified location. 'side' can be a Forge direction number or name.
---@param location table{x:number
---@param y? number: z:number
---@param dimId? number}
---@param side? number|string
---@return table
function meInterfaceTerminal.getInterfacesByLocation(location, y, dimId, side) end

---Returns a list of interfaces with the specified display name.
---@param filter string
---@return table
function meInterfaceTerminal.getInterfacesByName(filter) end

---Returns the maximum amount of stored energy for the given side.
---@param direction? number
---@return number
function meInterfaceTerminal.getMaxEnergyStored(direction) end

---Returns whether this component can provide energy.
---@return number
function meInterfaceTerminal.isEnergyProvider() end

---Returns whether this component can receive energy.
---@return number
function meInterfaceTerminal.isEnergyReceiver() end

---Sends a pattern from source to target. Returns transfer result and target slot or error message.
---@param source table{location:table
---@param slot number}
---@param target? table{location:table
---@param slot? number}
---@return boolean, number|string
function meInterfaceTerminal.send(source, slot, target, slot) end

---Executes multiple transfers in one batch. Returns an array of results, each containing [success:boolean, slotOrError:any].
---@param tasks table{{source:table
---@param target table}
---@param arg3 any
---@return table
function meInterfaceTerminal.sendBatch(tasks, target, arg3) end
