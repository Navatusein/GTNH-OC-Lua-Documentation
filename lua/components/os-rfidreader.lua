---@meta _

---The RFID Reader from OpenSecurity.
---@class os_rfidreader: BaseComponent
---@field type "os_rfidreader"
local osRfidreader = {}

---@field greet any # function

---pushes a signal "rfidData" for each found rfid on all players in range, optional set range.
---@param optional int:range
---@return string
function osRfidreader.scan(optional) end
