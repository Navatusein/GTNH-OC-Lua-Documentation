---@meta _

---The Generator Upgrade, which burns solid fuel to recharge its host.
---@class generator: BaseComponent
---@field type "generator"
local generator = {}

---Get the size of the item stack in the generator's queue.
---@return number
function generator.count() end

---Tries to insert fuel from the selected slot into the generator's queue.
---@param count? number
---@return boolean
function generator.insert(count) end

---Tries to remove items from the generator's queue.
---@param count? number
---@return boolean
function generator.remove(count) end
