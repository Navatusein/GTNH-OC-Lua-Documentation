---@meta _

---@class AECraftingJob
---@field type "userdata"
local AECraftingJob = {}

---Get whether the crafting request is currently computing.
---@return boolean
function AECraftingJob.isComputing() end

---Get whether the crafting request has failed.
---@return boolean
function AECraftingJob.hasFailed() end

---Get whether the crafting request has been canceled.
---@return boolean
function AECraftingJob.isCanceled() end

---Get whether the crafting request is done.
---@return boolean
function AECraftingJob.isDone() end