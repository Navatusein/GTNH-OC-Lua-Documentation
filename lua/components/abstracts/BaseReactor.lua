---@meta _

---@class BaseReactor: BaseComponent
local reactor = {}

---Get the reactor's heat.
---@return integer
function reactor.getHeat() end

---Get the reactor's maximum heat before exploding.
---@return integer
function reactor.getMaxHeat() end

---Get the reactor's energy output. Not multiplied with the base EU/t value.
---@return integer
function reactor.getReactorEnergyOutput() end

---Get the reactor's base EU/t value.
---@return integer
function reactor.getReactorEUOutput() end

---Get whether the reactor is active and supposed to produce energy.
---@return boolean
function reactor.producesEnergy() end

---Get information about the item stored in the given reactor slot.
---@param x integer # Item's position on the x axis
---@param y integer # Item's position on the y axis
---@return ReactorComponent
function reactor.getSlotInfo(x, y) end

---activate or deactivate the reactor
---@param active boolean? # If not provided, toggles between.
---@return boolean
function reactor.setActive(active) end