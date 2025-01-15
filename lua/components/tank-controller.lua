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
