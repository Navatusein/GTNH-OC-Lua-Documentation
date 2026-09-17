---@meta _

---The Magnetic Card Reader from OpenSecurity.
---@class os_magreader: BaseComponent
---@field type "os_magreader"
local osMagreader = {}

---The mod gives no description for this method.
function osMagreader.greet() end

---Sets the name of the event that gets sent when a card is swipped
---@param name string
---@return boolean
function osMagreader.setEventName(name) end
