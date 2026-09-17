---@meta _

---Interface configuration and pattern editing, shared by the ME interface
---and the ME fluid interface.
---
---Slot and index arguments are one based. The pattern `index` addresses a slot
---inside the pattern, not the pattern itself — the pattern is picked by `slot`.
---@class MEInterfaceAPI: BaseComponent
local MEInterfaceAPI = {}

---Get the item being stocked in the given slot, or in the first slot if none is given.
---@param slot? integer # The slot index to check.
---@return ItemStack
function MEInterfaceAPI.getInterfaceConfiguration(slot) end

---Clear the item being stocked in the given slot, or in the first slot if none is given.
---@param slot? integer # The index of the slot to clear.
---@return boolean
function MEInterfaceAPI.setInterfaceConfiguration(slot) end

---Set the item being stocked in the given slot.
---@param slot integer # The index of the slot to set.
---@param dbAddress string # The address of a database that contains the item to stock.
---@param dbIndex integer # The index of the item inside the database.
---@param size? integer # How many items to stock. Defaults to 1.
---@return boolean
function MEInterfaceAPI.setInterfaceConfiguration(slot, dbAddress, dbIndex, size) end

---Set the item being stocked in the first slot.
---@param dbAddress string # The address of a database that contains the item to stock.
---@param dbIndex integer # The index of the item inside the database.
---@param size? integer # How many items to stock. Defaults to 1.
---@return boolean
function MEInterfaceAPI.setInterfaceConfiguration(dbAddress, dbIndex, size) end

---Get the pattern in the given slot, or in the first slot if none is given.
---@param slot? integer # The slot holding the pattern.
---@return MEPattern
function MEInterfaceAPI.getInterfacePattern(slot) end

---Set the pattern input at the given index from a database entry.
---@param slot integer # The slot holding the pattern to modify.
---@param index integer # The index of the input slot inside the pattern.
---@param dbAddress? string # The address of a database that contains the new input.
---@param dbIndex? integer # The index of the entry inside the database.
---@param size? integer # The amount to set the input to.
---@return boolean
function MEInterfaceAPI.setInterfacePatternInput(slot, index, dbAddress, dbIndex, size) end

---Set the pattern input at the given index from a descriptor table.
---@param slot integer # The slot holding the pattern to modify.
---@param index integer # The index of the input slot inside the pattern.
---@param detail table # A table describing the stack to set.
---@param type string # The type of the stack, `"item"` or `"fluid"`.
---@return boolean
function MEInterfaceAPI.setInterfacePatternInput(slot, index, detail, type) end

---Set the pattern output at the given index from a database entry.
---@param slot integer # The slot holding the pattern to modify.
---@param index integer # The index of the output slot inside the pattern.
---@param dbAddress? string # The address of a database that contains the new output.
---@param dbIndex? integer # The index of the entry inside the database.
---@param size? integer # The amount to set the output to.
---@return boolean
function MEInterfaceAPI.setInterfacePatternOutput(slot, index, dbAddress, dbIndex, size) end

---Set the pattern output at the given index from a descriptor table.
---@param slot integer # The slot holding the pattern to modify.
---@param index integer # The index of the output slot inside the pattern.
---@param detail table # A table describing the stack to set.
---@param type string # The type of the stack, `"item"` or `"fluid"`.
---@return boolean
function MEInterfaceAPI.setInterfacePatternOutput(slot, index, detail, type) end

---Store the pattern input at the given index into a database entry.
---Fluids are stored as AE2FC drops.
---@param slot integer # The slot holding the pattern to read.
---@param index integer # The index of the input slot inside the pattern.
---@param dbAddress string # The address of the database to store into.
---@param dbIndex integer # Where to store it inside the database.
---@return boolean
function MEInterfaceAPI.storeInterfacePatternInput(slot, index, dbAddress, dbIndex) end

---Store the pattern output at the given index into a database entry.
---Fluids are stored as AE2FC drops.
---@param slot integer # The slot holding the pattern to read.
---@param index integer # The index of the output slot inside the pattern.
---@param dbAddress string # The address of the database to store into.
---@param dbIndex integer # Where to store it inside the database.
---@return boolean
function MEInterfaceAPI.storeInterfacePatternOutput(slot, index, dbAddress, dbIndex) end

---Clear the pattern input at the given index.
---@param slot integer # The slot holding the pattern to modify.
---@param index integer # The index of the input slot to clear.
---@return boolean
function MEInterfaceAPI.clearInterfacePatternInput(slot, index) end

---Clear the pattern output at the given index.
---@param slot integer # The slot holding the pattern to modify.
---@param index integer # The index of the output slot to clear.
---@return boolean
function MEInterfaceAPI.clearInterfacePatternOutput(slot, index) end
