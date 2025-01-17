---@meta _

---@class AECraftable
local AECraftable = {}

---Sends a craft request to the ME system for this pattern
---@param amount integer # The amount of items to craft
---@param prioritizePower? boolean # Wether to prioririze power usage idk needs more digging?
---@param cpuName? string # the name of the cpu to start the craft in
---@return AECraftingJob # A tracker for the craft 
function AECraftable.request(amount, prioritizePower, cpuName) end

---Gets the display item for the pattern
---@return MEItemStack
function AECraftable.getItemStack() end