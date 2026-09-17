---@meta _

---A Forestry analyzer.
---@class forestry_analyzer: BaseEnergyHandler
---@field type "forestry_analyzer"
local forestryAnalyzer = {}

---Get info on the currently present bee.
---@return boolean
function forestryAnalyzer.getIndividualOnDisplay() end

---Get the progress of the current operation.
---@return boolean
function forestryAnalyzer.getProgress() end

---Get whether the analyzer can work.
---@return boolean
function forestryAnalyzer.isWorking() end
