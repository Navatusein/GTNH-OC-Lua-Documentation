---@meta _

---The Magnetic Card Reader from OpenSecurity.
---@class os_magreader: BaseComponent
---@field type "os_magreader"
local osMagreader = {}

---@field greet any # function

---Sets the name of the event that gets sent when a card is swipped
---@param String name
---@return boolean
function osMagreader.setEventName(String) end
