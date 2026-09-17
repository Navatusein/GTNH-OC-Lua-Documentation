---@meta _

---A Draconic Evolution reactor.
---
---The component sits on the Energy Injector and the Stabilizer, not on the core itself,
---and both forward every call to the core they belong to. None of these methods take
---arguments; passing one raises an error. Both hosts are RF blocks, so the energy
---handler methods are there too and report that host, not the reactor.
---@class draconic_reactor: BaseEnergyHandler
---@field type "draconic_reactor"
local draconicReactor = {}

---Returns the current state of the reactor.
---@return DraconicReactorInfo
function draconicReactor.getReactorInfo() end

---Starts charging the reactor, which is the step before it can be activated.
---@return boolean # False if the reactor is not in a state that can start charging.
function draconicReactor.chargeReactor() end

---Activates a charged reactor.
---@return boolean # False if the reactor is not charged yet.
function draconicReactor.activateReactor() end

---Begins shutting the reactor down.
---@return boolean # False if the reactor cannot stop right now.
function draconicReactor.stopReactor() end
