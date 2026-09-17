---@meta _

---A Railcraft world anchor.
---@class anchor: BaseComponent
---@field type "anchor"
local anchor = {}

---Get the remaining anchor time, in ticks.
---@return integer
function anchor.getFuel() end

---Get the anchor fuel slot's contents.
---@return table
function anchor.getFuelSlotContents() end

---Get the anchor owner name.
---@return string
function anchor.getOwner() end

---Get the anchor type.
---@return string
function anchor.getType() end

---If the anchor is disabled (powered by redstone).
---@return boolean
function anchor.isDisabled() end
