---@meta _

---The RFID Reader from OpenSecurity.
---@class os_rfidreader: BaseComponent
---@field type "os_rfidreader"
local osRfidreader = {}

---The mod gives no description for this method.
function osRfidreader.greet() end

---pushes a signal "rfidData" for each found rfid on all players in range, optional set range.
---@param range? integer
---@return string
function osRfidreader.scan(range) end
