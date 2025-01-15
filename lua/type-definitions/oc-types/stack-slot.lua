---@meta _

---@class StackSlot
local stackSlot = {}

---Reset the iterator index so that the next call will return the first element.
function stackSlot.reset() end

---Returns the number of elements in the this.array.
---@return integer
function stackSlot.count() end

---Returns ALL the stack in the this.array. Memory intensive.
---@return ItemStack[]
function stackSlot.getAll() end