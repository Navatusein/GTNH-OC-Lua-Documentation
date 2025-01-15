---@meta _

---@class level_maintainer: BaseComponent
---@field type "level_maintainer"
local levelMaintainer = {}

---Sets an item to be stocked in the level maintainer
---DOES NOT APPEAR TO FUNCTION IN 2.6.1
---
---@param slot integer # The slot to edit
---@param dbAddress string  # The address of the database to set the item from
---@param dbIndex integer # The index in the database of the item to maintain
---@param quantity integer # The amount to level maintain
---@param batchSize integer # How many items to craft per request
---@return true # always returns true or just crashes if it doesn't work
function levelMaintainer.setSlot(slot, dbAddress, dbIndex, quantity, batchSize) end

---Updates the amounts to craft for a specific slot
---DOES NOT APPEAR TO FUNCTION IN 2.6.1
---
---@param slot integer # The slot to edit
---@param quantity integer # The amount to level maintain
---@param batchSize integer # How many items to craft per request
---@return true # Always returns true or just crashes if it doesn't work
function levelMaintainer.setSlot(slot, quantity, batchSize) end

---Fetches information about a slot in a level maintainer
---@return LevelMaintainerSlot|nil # A descriptor of the slot or nil if the slot is unset
function levelMaintainer.getSlot(slot) end

---Gets the state of the level maintainer
---@return boolean # True if the level maintainer is connected to AE
function levelMaintainer.active() end

---Checks if a slot has is done crafting items
---@param slot integer # The slot to check the status of
---@return boolean # True if the slot is done crafting
function levelMaintainer.isDone(slot) end

---Enables or disables a specific slot 
---@param slot integer # The slot to change the status of
---@param newStatus boolean # True to enable the slot, false to disable it
---@return true # Always returns true
function levelMaintainer.isDone(slot, newStatus) end

---Enable or disables a specific slot
---@param slot integer # The slot to get the status of
---@return boolean # True if the slot is enabled
function levelMaintainer.isEnable(slot) end