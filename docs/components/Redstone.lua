---@meta _

---@class redstone: BaseComponent
---@field type "redstone"
local redstone = {};

---Returns current incoming (non-bundled) redstone values on all sides..
---@return redstoneIOStatus signals # The values may exceed the 0-15 range if using project red.
function redstone.getInput() end

-- Returns current incoming (non-bundled) redstone value on a specific side.
---@param side integer # The side to check.
---@return integer input # The value may exceed the 0-15 range if using project red.
function redstone.getInput(side) end

---Returns current outgoing (non-bundled) redstone values on all sides.
---@return redstoneIOStatus values # The values may exceed the 0-15 range if using project red.
function redstone.getOutput() end

-- Returns current outgoing (non-bundled) redstone value on a specific side.
---@param side integer # The side The side to check
---@return integer value # The value may exceed the 0-15 range if using project red
function redstone.getOutput(side) end

---Sets the strength of the redstone signal to emit on a specific side.
---@param side integer # The value to set on that side.
---@param value integer # The value to output on the specified side.
---@return integer oldValue # Returns the old output value on that side. This can be an arbitrarily large number for mods that support this.
function redstone.setOutput(side, value) end

---@alias redstoneIOStatus table<(0|1|2|3|4|5), integer>

---Lets you specify the output signal strength to a all sides at once, you can omit some values if needed to not update them.
---@param values redstoneIOStatus # A side-value dictionary for the new output values.
---@return redstoneIOStatus oldValues # the old output values
function redstone.setOutput(values) end