---@meta "serialization"

---@class serialization
local serialization = {}

---Serializes a value into a Lua-readable string.
---@param value any # The value to serialize. Functions are not supported.
---@param pretty boolean|number|nil # If true, formats output for display. Number specifies max entries to display. Defaults to nil (compact mode).
---@return string # A string representation of the serialized value.
function serialization.serialize(value, pretty) end

---Unserialize a string back into its original Lua value.
---@param value string # The serialized string to unserialize.
---@return any # The original Lua value restored from the string.
function serialization.unserialize(value) end

return serialization
