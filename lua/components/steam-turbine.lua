---@meta _

---A Railcraft steam turbine.
---@class steam_turbine: BaseComponent
---@field type "steam_turbine"
local steamTurbine = {}

---Returns the maximum capacity of the electric tile
---@return number
function steamTurbine.getCapacity() end

---Returns the current charge of the electric tile
---@return number
function steamTurbine.getCharge() end

---Returns the draw per tick of the electric tile.
---@return number
function steamTurbine.getDraw() end

---Returns the loss per tick of the electric tile.
---@return number
function steamTurbine.getLoss() end

---Returns the output of the steam turbine
---@return number
function steamTurbine.getTurbineOutput() end

---Returns the durability of the rotor in percent.
---@return number
function steamTurbine.getTurbineRotorStatus() end
