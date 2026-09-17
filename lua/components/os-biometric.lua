---@meta _

---The Biometric Reader from OpenSecurity.
---@class os_biometric: BaseComponent
---@field type "os_biometric"
local osBiometric = {}

---@field greet any # function

---Sets the name of the event that gets sent
---@param String name
---@return boolean
function osBiometric.setEventName(String) end
