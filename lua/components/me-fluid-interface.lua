---@meta _

---The ME fluid interface from AE2 Fluid Craft Rework.
---
---It inherits the whole ME interface API because its tile extends the regular
---interface tile, so OpenComputers attaches the ME interface driver to it as well.
---@class fluid_interface: CommonNetworkAPI, EssentiaNetworkAPI, MEInterfaceAPI
---@field type "fluid_interface"
local meFluidInterface = {}

---Get the fluid being stocked in the given slot, or in the first slot if none is given.
---
---**Interface block only** — on a cable part the side comes first.
---@param slot? integer # The slot index to check.
---@return MEFluidStack
function meFluidInterface.getFluidInterfaceConfiguration(slot) end

---Get the fluid being stocked on the given side.
---
---**Interface cable part only** — on the block there is no side argument.
---@param side integer # The side of the host the part sits on.
---@param slot? integer # The slot index to check.
---@return MEFluidStack
function meFluidInterface.getFluidInterfaceConfiguration(side, slot) end

---Clear the fluid being stocked in the given slot, or in the first slot if none is given.
---
---**Interface block only** — on a cable part the side comes first.
---@param slot? integer # The index of the slot to clear.
---@return boolean
function meFluidInterface.setFluidInterfaceConfiguration(slot) end

---Set the fluid being stocked in the given slot.
---
---**Interface block only** — on a cable part the side comes first.
---@param slot integer # The index of the slot to set.
---@param detail table # A table describing the fluid to stock.
---@return boolean
function meFluidInterface.setFluidInterfaceConfiguration(slot, detail) end

---Set the fluid being stocked on the given side.
---
---**Interface cable part only** — on the block there is no side argument.
---@param side integer # The side of the host the part sits on.
---@param slot? integer # The index of the slot to set.
---@param detail? table # A table describing the fluid to stock. Omit to clear the slot.
---@return boolean
function meFluidInterface.setFluidInterfaceConfiguration(side, slot, detail) end
