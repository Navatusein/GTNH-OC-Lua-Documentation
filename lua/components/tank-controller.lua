---@meta _

---@class tank_controller: BaseComponent
---@field type "tank_controller"
local tankController = {}

---Get the capacity of the tank on the specified side.
---@param side integer # Which side to look at
---@param tank? integer # Which tank in that side to look at
---@return integer
function tankController.getTankCapacity(side, tank) end

---Gets amount of fluid in tank on specified side.
---@param side integer # Which side to look at
---@return integer
---@param tank? integer # Which tank in that side to look at
function tankController.getTankLevel(side, tank) end

---Get a description of the fluid in the the tank on the specified side.
---@param side integer # Which side to look at
---@param tank? integer # Which tank in that side to look at
---@return FluidStack|nil # `nil` if there is no items in the slot
function tankController.getFluidInTank(side, tank) end

---Get the number of tanks available on the specified side.
---@param side integer # Which side to look at
---@return integer
function tankController.getTankCount(side) end

---Get the amount of fluid in the tank item in the specified slot, or in the selected slot.
---
---**Robot only** - an adapter has no inventory of its own.
---@param slot? integer # The slot holding the tank item.
---@return integer # The amount of fluid in the tank item.
function tankController.getTankLevelInSlot(slot) end

---Get the capacity of the tank item in the specified slot, or in the selected slot.
---
---**Robot only** - an adapter has no inventory of its own.
---@param slot? integer # The slot holding the tank item.
---@return integer # The capacity of the tank item.
function tankController.getTankCapacityInSlot(slot) end

---Get a description of the fluid in the tank item in the specified slot, or in the selected slot.
---
---**Robot only** - an adapter has no inventory of its own.
---@param slot? integer # The slot holding the tank item.
---@return FluidStack|nil # `nil` if the slot holds no tank item.
function tankController.getFluidInTankInSlot(slot) end

---Get a description of the fluid in the robot's own tank with the specified index, or in the selected tank.
---
---**Robot only** - an adapter has no internal tanks.
---@param tank? integer # The index of the internal tank.
---@return FluidStack|nil # `nil` if the tank is empty.
function tankController.getFluidInInternalTank(tank) end

---Transfers fluid from a tank item in the selected inventory slot to the selected internal tank.
---
---**Robot only** - an adapter has no internal tanks.
---@param amount? integer # The number of millibuckets to transfer.
---@return boolean # True if the fluid was transferred.
function tankController.drain(amount) end

---Transfers fluid from the selected internal tank to a tank item in the selected inventory slot.
---
---**Robot only** - an adapter has no internal tanks.
---@param amount? integer # The number of millibuckets to transfer.
---@return boolean # True if the fluid was transferred.
function tankController.fill(amount) end
