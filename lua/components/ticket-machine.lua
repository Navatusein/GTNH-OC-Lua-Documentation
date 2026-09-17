---@meta _

---The Ticket Machine from Railcraft, driven by Computronics.
---@class ticket_machine: BaseComponent
---@field type "ticket_machine"
local ticketMachine = {}

---Returns the destination of the currently selected or the specified ticket
---@param slot? number
---@return string
function ticketMachine.getDestination(slot) end

---Returns the index of the currently selected ticket
---@return number
function ticketMachine.getSelectedTicket() end

---Returns true if manual printing is allowed
---@return boolean
function ticketMachine.isManualPrintingAllowed() end

---Returns true if manual ticket selection is allowed
---@return boolean
function ticketMachine.isManualSelectionAllowed() end

---Tries to print one or more tickets from the current or the specified ticket slot; amount may be nil; Returns true on success
---@param amount? number
---@param slot? number
---@return boolean
function ticketMachine.printTicket(amount, slot) end

---Tries to set the destination of the currently selected or the specified ticket; Returns the new destination
---@param slot? number
---@param destination? string
---@return string
function ticketMachine.setDestination(slot, destination) end

---permits or prohibits manual printing; Returns true if manual printing is allowed
---@param allowed boolean
---@return boolean
function ticketMachine.setManualPrintingAllowed(allowed) end

---permits or prohibits manually selecting a ticket; Returns true if manual ticket selection is allowed
---@param allowed boolean
---@return boolean
function ticketMachine.setManualSelectionAllowed(allowed) end

---Sets the currently selected ticket slot; Returns the new selected slot
---@param slot number
---@return number
function ticketMachine.setSelectedTicket(slot) end
