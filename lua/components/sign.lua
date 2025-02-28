---@meta _

---@class sign: BaseComponent
---@field type "sign"
local sign = {}

---Gets the text currently displayed on the sign in front of the host.
---@return string text # The text displayed on the sign.
function sign.getValue() end

---Sets the text on the sign in front of the host.
---@param value string # The text to be displayed on the sign.
---@return string newText # The updated text that is now displayed on the sign.
function sign.setValue(value) end

return sign
