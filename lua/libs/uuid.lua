---@meta "uuid"

---@class uuid
local uuid = {}

---Returns 128 bit random identifiers, represented as a hex value in a string grouped by 8, 4, 4, 4, and 12 hex characters, separated by dashes.
---@return string # e.g. "34eb7b28-14d3-4767-b326-dd1609ba92e"
function uuid.next() end

return uuid