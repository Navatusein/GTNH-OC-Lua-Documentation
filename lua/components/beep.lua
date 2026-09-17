---@meta _

---The Beep Card from Computronics.
---@class beep: BaseComponent
---@field type "beep"
local beep = {}

---table needs to contain frequency-duration pairs; plays each frequency for the specified duration. Returns true on success.
---@param frequencyDurationTable table
---@return boolean
function beep.beep(frequencyDurationTable) end

---returns the amount of beeps currently being played
---@return number
function beep.getBeepCount() end
