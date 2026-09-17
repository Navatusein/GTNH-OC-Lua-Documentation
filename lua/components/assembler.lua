---@meta _

---The Assembler, which builds robots, drones, tablets and microcontrollers.
---@class assembler: BaseComponent
---@field type "assembler"
local assembler = {}

---Start assembling, if possible. Returns whether assembly was started or not.
---@return boolean
function assembler.start() end

---The current state of the assembler, `busy' or `idle', followed by the progress or template validity, respectively.
---@return string, number, boolean
function assembler.status() end
