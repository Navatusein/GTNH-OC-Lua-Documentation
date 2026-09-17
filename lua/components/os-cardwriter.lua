---@meta _

---The Card Writer from OpenSecurity.
---@class os_cardwriter: BaseComponent
---@field type "os_cardwriter"
local osCardwriter = {}

---The mod gives no description for this method.
function osCardwriter.flash() end

---writes data to the card, (64 characters for RFID, or 128 for MagStripe), the rest is silently discarded, 2nd argument will change the displayed name of the card in your inventory. if you pass true to the 3rd argument you will not be able to erase, or rewrite data, the 3rd argument will set the color of the card, use OC's sides api.
---@param data string
---@param displayName string
---@param locked boolean
---@param color integer
---@return string
function osCardwriter.write(data, displayName, locked, color) end
