---@meta _

---The Card Writer from OpenSecurity.
---@class os_cardwriter: BaseComponent
---@field type "os_cardwriter"
local osCardwriter = {}

---@field flash any # function

---writes data to the card, (64 characters for RFID, or 128 for MagStripe), the rest is silently discarded, 2nd argument will change the displayed name of the card in your inventory. if you pass true to the 3rd argument you will not be able to erase, or rewrite data, the 3rd argument will set the color of the card, use OC's sides api.
---@param string data
---@param string displayName
---@param boolean locked
---@param int color
---@return string
function osCardwriter.write(string, string, boolean, int) end
