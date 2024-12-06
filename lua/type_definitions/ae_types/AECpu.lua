---@meta _

---@class AECpu
local AECpu = {}

---Get the list of items that are actively being crafted.
---@return ItemStack[]
function AECpu.activeItems() end

---Get the list of items currently stored in the cpu.
---@return ItemStack[]
function AECpu.storedItems() end

---Get the list of items that are scheduled to be crafted.
---@return ItemStack[]
function AECpu.pendingItems() end

---Gets the item being crafted by the CPU.
---Does not function without a crafting monitor.
---@return ItemStack
function AECpu.finalOutput() end

---Attempts to cancel the craft.
---@return boolean
function AECpu.cancel() end

---Checks if the cpu is online.
---@return boolean
function AECpu.isActive() end

---Checks if the cpu is currently crafting something.
---@return boolean 
function AECpu.isBusy() end