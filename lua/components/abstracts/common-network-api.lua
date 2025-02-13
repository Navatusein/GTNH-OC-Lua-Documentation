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

---Get a list of the stored fluids in the network.
---@return MEFluidStack[]
function CommonNetworkAPI.getFluidsInNetwork() end

---Get a list of the stored essentia in the network.
---@return EssentiaStack[]
function CommonNetworkAPI.getEssentiaInNetwork() end

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