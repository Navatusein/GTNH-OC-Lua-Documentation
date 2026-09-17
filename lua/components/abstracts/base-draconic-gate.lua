---@meta _

---A Draconic Evolution flow gate, either the flux gate or the fluid gate.
---
---The gate normally follows the redstone signal: the flow is interpolated between the
---low and the high signal value. Turning the override on makes it ignore redstone and
---use the override value instead.
---@class BaseDraconicGate: BaseComponent
local baseDraconicGate = {}

---Returns the flow the gate is actually moving right now.
---@return number
function baseDraconicGate.getFlow() end

---Returns whether the redstone signal is being ignored in favour of the override value.
---@return boolean
function baseDraconicGate.getOverrideEnabled() end

---Sets whether to ignore the redstone signal and use the override value.
---@param enabled boolean
function baseDraconicGate.setOverrideEnabled(enabled) end

---Sets the flow used while the override is enabled.
---@param flow number
function baseDraconicGate.setFlowOverride(flow) end

---Returns the flow used at full redstone signal.
---@return number
function baseDraconicGate.getSignalHighFlow() end

---Sets the flow used at full redstone signal.
---@param flow number
function baseDraconicGate.setSignalHighFlow(flow) end

---Returns the flow used at no redstone signal.
---@return number
function baseDraconicGate.getSignalLowFlow() end

---Sets the flow used at no redstone signal.
---@param flow number
function baseDraconicGate.setSignalLowFlow(flow) end
