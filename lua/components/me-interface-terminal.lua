---@meta _

---The ME Interface Terminal.
---@class me_interface_terminal: BaseEnergyHandler
---@field type "me_interface_terminal"
local meInterfaceTerminal = {}

---Returns a list of all interfaces reachable from this terminal.
---@return table
function meInterfaceTerminal.getInterfaces() end

---Returns a list of interfaces at the specified location.
---@param location MEInterfaceLocation # Where to look.
---@param side? number|string # A Forge direction, as a number or as a name.
---@return table
function meInterfaceTerminal.getInterfacesByLocation(location, side) end

---Returns a list of interfaces with the specified display name.
---@param filter string # The display name to look for.
---@return table
function meInterfaceTerminal.getInterfacesByName(filter) end

---Sends a pattern from one interface to another.
---@param source MEInterfaceSlot # The interface and slot to take the pattern from.
---@param target? MEInterfaceSlot # The interface to put it in, and optionally the slot.
---@return boolean # Whether the transfer succeeded.
---@return number|string # The target slot on success, an error message otherwise.
function meInterfaceTerminal.send(source, target) end

---Executes several pattern transfers in one batch.
---@param tasks MEInterfaceTransfer[] # The transfers to perform.
---@return table # One result per task, each `{success:boolean, slotOrError:any}`.
function meInterfaceTerminal.sendBatch(tasks) end
