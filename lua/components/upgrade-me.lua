---@meta _

---@class upgrade_me: BaseComponent
---@field type "upgrade_me"
local upgradeMe = {}

---Checks if the upgrade is linked to the AE network.
---@return boolean # True if linked, false otherwise.
function upgradeMe.isLinked() end

---Gets a list of the stored fluids in the AE network.
---@return MEFluidStack[] # A table of stored fluids.
function upgradeMe.getFluidsInNetwork() end

---Gets a list of the stored items in the AE network.
---@param filter? table # Optional filter to match specific items.
---@return MEItemStack[] # A table of stored items.
function upgradeMe.getItemsInNetwork(filter) end

---Gets a list of the stored items in the AE network matching a filter by item ID.
---@param filter table # An array of item IDs to match.
---@return MEItemStack[] # A table of matching stored items.
function upgradeMe.getItemsInNetworkById(filter) end

---Gets an iterator for all items in the AE network.
---@return userdata # An iterator object for items.
function upgradeMe.allItems() end

---Gets the idle power usage of the AE network.
---@return number # The idle power usage in AE units.
function upgradeMe.getIdlePowerUsage() end

---Gets the average power usage of the AE network.
---@return number # The average power usage in AE units.
function upgradeMe.getAvgPowerUsage() end

---Gets the average power injection into the AE network.
---@return number # The average power injection in AE units.
function upgradeMe.getAvgPowerInjection() end

---Gets the maximum stored power in the AE network.
---@return number # The maximum stored power in AE units.
function upgradeMe.getMaxStoredPower() end

---Gets the current stored power in the AE network.
---@return number # The current stored power in AE units.
function upgradeMe.getStoredPower() end

---Transfers selected items to the AE system.
---@param amount number|nil # The number of items to transfer. Defaults to all selected items.
---@return number # The number of transferred items.
function upgradeMe.sendItems(amount) end

---Transfers selected fluids to the AE system.
---@param amount number|nil # The amount of fluid to transfer. Defaults to all selected fluid.
---@return number # The amount of transferred fluid.
function upgradeMe.sendFluids(amount) end

---Requests items from the AE system.
---@param database string # The address of the database component.
---@param entry number # The entry number in the database.
---@param amount number|nil # The amount of items to request. Defaults to 1.
---@return number # The number of retrieved items.
function upgradeMe.requestItems(database, entry, amount) end

---Requests fluids from the AE system.
---@param database string # The address of the database component.
---@param entry number # The entry number in the database.
---@param amount number|nil # The amount of fluid to request. Defaults to 1.
---@return number # The amount of retrieved fluid.
function upgradeMe.requestFluids(database, entry, amount) end

---Stores items in the AE network that match a filter.
---@param filter table # A filter table defining which items to store.
---@param dbAddress string # The database component address.
---@param startSlot number|nil # The starting slot in the database. Defaults to 1.
---@param count number|nil # The number of slots to check. Defaults to all available.
---@return boolean # True if the operation was successful, false otherwise.
function upgradeMe.store(filter, dbAddress, startSlot, count) end

---Gets a list of available crafting CPUs in the AE network.
---@return AECpuMetadata[] # A table containing CPU information.
function upgradeMe.getCpus() end

---Gets a list of known crafting recipes in the AE network.
---@param filter? table # Optional filter to match specific recipes.
---@return AECraftable[] # A table of known crafting recipes.
function upgradeMe.getCraftables(filter) end
