---@meta _

---A GregTech machine seen through an adapter.
---@class gt_machine: BaseGregTechMachine
---@field type "gt_machine"
local gtMachine = {}

---Gets the circuit configuration. Returns -1 if no circuit or not applicable.
---
---**Circuit-configurable machines only** - machines without a configuration slot do not expose it.
---@return number
function gtMachine.getCircuitConfiguration() end

---Sets the circuit configuration. Use -1 to remove circuit. Returns true on success.
---
---**Circuit-configurable machines only** - machines without a configuration slot do not expose it.
---@param config number):boolean or (nil
---@param string any
function gtMachine.setCircuitConfiguration(config, string) end
