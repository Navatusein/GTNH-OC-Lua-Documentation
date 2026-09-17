---@meta _

---A single villager trade, as returned by the trading upgrade.
---@class Trade
local trade = {}

---Returns a sort index of the merchant that provides this trade.
---@return integer
function trade.getMerchantId() end

---Returns the items the merchant wants for this trade.
---@return ItemStack, ItemStack|nil # The first and the optional second input.
function trade.getInput() end

---Returns the item the merchant offers for this trade.
---@return ItemStack
function trade.getOutput() end

---Returns whether the merchant currently wants to trade this.
---@return boolean
function trade.isEnabled() end

---Performs the trade, taking the inputs out of the device's inventory
---and putting the output back into it.
---@return boolean|nil # True when the trade succeeds, or `nil` and an error message.
---@return string|nil
function trade.trade() end
