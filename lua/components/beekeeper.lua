---@meta "beekeeper"

---@class beekeeper: BaseComponent
---@field type "beekeeper"
local beekeeper = {}

---Removes an industrial upgrade from the specified slot of the industrial apiary at the given side.
---@param side number # The side of the apiary.
---@param slot number # The slot number of the upgrade.
---@param amount number|nil # The number of upgrades to remove. Defaults to all.
---@return boolean # True if the upgrade was removed successfully.
function beekeeper.removeIndustrialUpgrade(side, slot, amount) end

---Gets information about the industrial upgrade in the specified slot of the industrial apiary at the given side.
---@param side number # The side of the apiary.
---@param slot number # The slot number of the upgrade.
---@return ItemStack # A table containing details about the upgrade.
function beekeeper.getIndustrialUpgrade(side, slot) end

---Gets the current progress percentage of the active queen in the apiary at the specified side.
---@param side number # The side of the apiary.
---@return number # The progress percentage (0-100).
function beekeeper.getBeeProgress(side) end

---Swaps the drone from the selected slot with the one in the apiary at the specified side.
---@param side number # The side of the apiary.
---@return boolean # True if the swap was successful.
function beekeeper.swapDrone(side) end

---Checks if the current bee in the apiary at the specified side is able to work.
---@param side number # The side of the apiary.
---@return boolean # True if the bee can work, false otherwise.
function beekeeper.canWork(side) end

---Analyzes a bee in the selected slot using honey from the specified slot.
---@param honeyslot number # The slot containing the honey.
---@return boolean # True if the bee was successfully analyzed.
function beekeeper.analyze(honeyslot) end

---Swaps the queen from the selected slot with the one in the apiary at the specified side.
---@param side number # The side of the apiary.
---@return boolean # True if the swap was successful.
function beekeeper.swapQueen(side) end

---Adds an industrial upgrade to the industrial apiary at the given side.
---@param side number # The side of the apiary.
---@param amount number|nil # The number of upgrades to add. Defaults to all available.
---@return number # The number of upgrades successfully added.
function beekeeper.addIndustrialUpgrade(side, amount) end

return beekeeper
