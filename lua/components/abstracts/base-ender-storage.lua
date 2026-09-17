---@meta _

---A frequency-owning EnderStorage block: an ender chest or an ender tank.
---@class BaseEnderStorage: BaseComponent
local baseEnderStorage = {}

---Get the currently set frequency.
---@return number
function baseEnderStorage.getFrequency() end

---Get the name of the owner, which is usually a player's name or 'global'.
---@return string
function baseEnderStorage.getOwner() end

---Set the frequency. Who would have thought?!
---@param value number
function baseEnderStorage.setFrequency(value) end
