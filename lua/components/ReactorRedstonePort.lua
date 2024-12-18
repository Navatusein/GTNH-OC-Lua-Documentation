---@meta _


---@class reactor_redstone_port: BaseComponent
---@field type 'reactor_redstone_port'
local reactorRP = {}

---Get the reactor's emitted heat. Useful for fluid reactors.
---@return integer
function reactorRP.getEmitHeat() end

---Get the reactor's heat.
---@return integer
function reactorRP.getHeat() end

---Get the reactor's maximum heat before exploding.
---@return integer
function reactorRP.getMaxHeat() end

---Get the reactor's energy output. Not multiplied with the base EU/t value.
---@return integer
function reactorRP.getReactorEnergyOutput() end

---Get the reactor's base EU/t value.
---@return integer
function reactorRP.getReactorEUOutput() end

---Get whether the reactor is active and supposed to produce energy.
---@return boolean
function reactorRP.producesEnergy() end

---Get information about the item stored in the given reactor slot.
---@param x integer # Item's position on the x axis
---@param y integer # Item's position on the y axis
---@return IReactorComponent
function reactorRP.getSlotInfo(x, y) end

---activate or deactivate the reactor
---@param active boolean? # If not provided, toggles between.
---@return boolean
function reactorRP.setActive(active) end
