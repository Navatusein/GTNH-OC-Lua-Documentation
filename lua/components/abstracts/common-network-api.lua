---@meta _

---@class CommonNetworkAPI: BaseComponent
local CommonNetworkAPI = {}

---Get an iterator object for the list of the items in the network.
---@return fun():MEItemStack|nil
function CommonNetworkAPI.allItems() end

---Get a list of the stored items in the network.
---@param filter? MEItemStackFilter A filter for the query
---@return MEItemStack[]
function CommonNetworkAPI.getItemsInNetwork(filter) end

---Get a list of the stored items in the network matching the filter.
---@param filter integer[] # An array of item IDs.
---@return MEItemStack[]
function CommonNetworkAPI.getItemsInNetworkById(filter) end

---Retrieves the stored item in the network by its unlocalized name.
---@param name string|integer # The unlocalized name or the id of the item.
---@param damage? integer # The metadata of the item.
---@param nbt? string # An SNBT string describing the tag of the item.
---@return MEItemStack
function CommonNetworkAPI.getItemInNetwork(name, damage, nbt) end

---Retrieves the stored item in the network by a descriptor table.
---@param detail MEItemStackFilter # A table describing the item to look for.
---@return MEItemStack
function CommonNetworkAPI.getItemInNetwork(detail) end

---Get a list of the stored fluids in the network.
---@return MEFluidStack[]
function CommonNetworkAPI.getFluidsInNetwork() end

---Get the stored fluids in the network, optionally narrowed down to one fluid.
---@param name? string # The name of the fluid to look for.
---@return MEFluidStack[]
function CommonNetworkAPI.getFluidInNetwork(name) end

---Get the stored fluid in the network described by a descriptor table.
---@param detail table # A table describing the fluid to look for.
---@return MEFluidStack[]
function CommonNetworkAPI.getFluidInNetwork(detail) end

---Store items in the network matching the specified filter in the database with the specified address.
---@param filter MEItemStackFilter # A filter of items to look for.
---@param dbAddress string # Address of the internal database to store items to.
---@param startSlot? integer # Optional, start index of the first item to store.
---@param count? integer # Optional, how many items to store.
---@return boolean
function CommonNetworkAPI.store(filter, dbAddress, startSlot, count) end

---Get a list of all available cpus on the network.
---@return AECpuMetadata[]
function CommonNetworkAPI.getCpus() end

---Get a list of known item recipes. These can be used to issue crafting requests.
---@param filter? MEItemStackFilter # A filter of items to look for.
---@return AECraftable[]
function CommonNetworkAPI.getCraftables(filter) end

---Get a single known recipe. This can be used to issue a crafting request.
---@param detail? MEItemStackFilter # A table describing the item to look for.
---@param type? string # The type of the stack to look for, `"item"` or `"fluid"`.
---@return AECraftable
function CommonNetworkAPI.getCraftable(detail, type) end

---Get the average power injection into the network.
---@return number
function CommonNetworkAPI.getAvgPowerInjection() end

---Get the average power usage of the network.
---@return number
function CommonNetworkAPI.getAvgPowerUsage() end

---Get the maximum stored power in the network.
---@return number
function CommonNetworkAPI.getMaxStoredPower() end

---Get the stored power in the network. 
---@return number
function CommonNetworkAPI.getStoredPower() end

---Get the idle power usage of the network.
---@return number
function CommonNetworkAPI.getIdlePowerUsage() end

---Enable or disable subscription to the `network_item_changed` event.
---@param enabled boolean
function CommonNetworkAPI.setItemEventSubscription(enabled) end

---Returns whether the `network_item_changed` event subscription is currently enabled.
---@return boolean
function CommonNetworkAPI.isItemEventSubscription() end

---Enable or disable subscription to the `network_fluid_changed` event.
---@param enabled boolean
function CommonNetworkAPI.setFluidEventSubscription(enabled) end

---Returns whether the `network_fluid_changed` event subscription is currently enabled.
---@return boolean
function CommonNetworkAPI.isFluidEventSubscription() end