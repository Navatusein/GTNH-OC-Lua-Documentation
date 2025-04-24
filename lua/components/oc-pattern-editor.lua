---@meta _

---@class oc_pattern_editor: BaseComponent
---@field type "oc_pattern_editor"
local ocPatternEditor = {}

---Get the configuration of the interface.
---@param slot? integer # The slot index to check (optional, defaults to first).
---@return ItemStack
function ocPatternEditor.getInterfaceConfiguration(slot) end

---Get the given pattern in the interface.
---@param slot? integer # The slot index of the pattern to retrieve (optional, defaults to first).
---@return ItemStack
function ocPatternEditor.getInterfacePattern(slot) end

---Set the pattern item input at the given index.
---@param slot integer # The index of the pattern to modify.
---@param dbAddress string # The address of the database that contains the desired input.
---@param dbIndex integer # The index of the entry in the database.
---@param count integer # The amount of the item to input.
---@param inputIndex integer # The input slot to set.
---@return boolean
function ocPatternEditor.setInterfacePatternItemInput(slot, dbAddress, dbIndex, count, inputIndex) end

---Set the pattern item output at the given index.
---@param slot integer # The index of the pattern to modify.
---@param dbAddress string # The address of the database that contains the desired output.
---@param dbIndex integer # The index of the entry in the database.
---@param count integer # The amount of the item to output.
---@param outputIndex integer # The output slot to set.
---@return boolean
function ocPatternEditor.setInterfacePatternItemOutput(slot, dbAddress, dbIndex, count, outputIndex) end

---Set the pattern fluid input at the given index.
---@param slot integer # The index of the pattern to modify.
---@param dbAddress string # The address of the database that contains the desired fluid input.
---@param dbIndex integer # The index of the fluid entry.
---@param count integer # The amount of the fluid to input.
---@param inputIndex integer # The input slot to set.
---@return boolean
function ocPatternEditor.setInterfacePatternFluidInput(slot, dbAddress, dbIndex, count, inputIndex) end

---Set the pattern fluid output at the given index.
---@param slot integer # The index of the pattern to modify.
---@param dbAddress string # The address of the database that contains the desired fluid output.
---@param dbIndex integer # The index of the fluid entry.
---@param count integer # The amount of the fluid to output.
---@param outputIndex integer # The output slot to set.
---@return boolean
function ocPatternEditor.setInterfacePatternFluidOutput(slot, dbAddress, dbIndex, count, outputIndex) end

---Clear pattern input at the given index.
---@param slot integer # The index of the pattern to modify.
---@param inputIndex integer # The input slot to clear.
---@return boolean
function ocPatternEditor.clearInterfacePatternInput(slot, inputIndex) end

---Clear pattern output at the given index.
---@param slot integer # The index of the pattern to modify.
---@param outputIndex integer # The output slot to clear.
---@return boolean
function ocPatternEditor.clearInterfacePatternOutput(slot, outputIndex) end
