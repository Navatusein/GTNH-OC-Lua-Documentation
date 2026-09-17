---@meta _

---The Bartworks Energy Cluster IO node.
---@class bec_io_node: BaseGregTechMachine
---@field type "bec_io_node"
local becIoNode = {}

---Returns the number of nanites available.
---@return number
function becIoNode.getAvailableNanites() end

---Returns the condensate types and amounts consumed so far in the current recipe, or nil.
---@return table
function becIoNode.getConsumedCondensate() end

---Returns the manual slowdown value.
---@return number
function becIoNode.getManualSlowdown() end

---Returns the maximum parallel recipe count.
---@return number
function becIoNode.getMaxParallel() end

---Returns the minimum parallel recipe count.
---@return number
function becIoNode.getMinParallel() end

---Returns the number of parallel recipes currently in progress.
---@return number
function becIoNode.getParallelRecipesInProgress() end

---Returns the nanite tier this node provides as {name, tier}, or nil.
---@return table
function becIoNode.getProvidedTier() end

---Returns an array of recipe steps. Each step has 'nanite' (table), 'start' (number), 'end' (number), and 'index' (number) fields.
---@return table
function becIoNode.getRecipeSteps() end

---Returns the condensate types and amounts required for the current recipe, or nil.
---@return table
function becIoNode.getRequiredCondensate() end

---Returns the nanite tier required by the current recipe as {name, tier}, or nil.
---@return table
function becIoNode.getRequiredTier() end

---Returns the number of slowdowns currently applied.
---@return number
function becIoNode.getSlowdowns() end

---Returns the machine state: 'idle', 'unpowered', 'assembler-offline', 'nanite-tier-too-low', 'paused-step', 'paused-immediate', 'crafting', or 'internal-error'.
---@return string
function becIoNode.getState() end

---Sets the maximum parallel recipe count.
---@param max number
function becIoNode.setMaxParallel(max) end

---Sets the minimum parallel recipe count.
---@param min number
function becIoNode.setMinParallel(min) end

---Sets the speed divisor.
---@param divisor number
function becIoNode.setSpeedDivisor(divisor) end
