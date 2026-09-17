---@meta _

---The Bartworks Energy Cluster diode.
---@class bec_diode: BaseGregTechMachine
---@field type "bec_diode"
local becDiode = {}

---Returns the name of the fluid used as condensate filter, or nil if no filter is set.
---@return string
function becDiode.getCondensateFilter() end

---Sets the condensate filter to the given fluid name.
---@param fluidName string
function becDiode.setCondensateFilter(fluidName) end
