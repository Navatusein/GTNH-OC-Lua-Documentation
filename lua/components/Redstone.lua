---@meta _

---@alias redstoneIOStatus table<(0|1|2|3|4|5), integer>
---@alias bundledRedstoneIOStatus table<(0|1|2|3|4|5), table<0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|16, integer>>

---@class redstone: BaseComponent
---@field type "redstone"
local redstone = {}

---Returns current incoming (non-bundled) redstone values on all sides.
---@return redstoneIOStatus signals # The values may exceed the 0-15 range if using Project Red.
function redstone.getInput() end

---Returns current incoming (non-bundled) redstone value on a specific side.
---@param side integer # The side to check.
---@return integer input # The value may exceed the 0-15 range if using Project Red.
function redstone.getInput(side) end

---Returns current outgoing (non-bundled) redstone values on all sides.
---@return redstoneIOStatus values # The values may exceed the 0-15 range if using Project Red.
function redstone.getOutput() end

---Returns current outgoing (non-bundled) redstone value on a specific side.
---@param side integer # The side to check.
---@return integer value # The value may exceed the 0-15 range if using Project Red.
function redstone.getOutput(side) end

---Sets the strength of the redstone signal to emit on a specific side.
---@param side integer # The side to set the output on.
---@param value integer # The value to output on the specified side.
---@return integer oldValue # Returns the old output value on that side. This can be an arbitrarily large number for mods that support this.
function redstone.setOutput(side, value) end

---Sets the strength of the redstone signal to emit on multiple sides at once.
---@param values redstoneIOStatus # A side-value dictionary for the new output values.
---@return redstoneIOStatus oldValues # The old output values.
function redstone.setOutput(values) end

---Returns bundled redstone input values for all sides and channels.
---@return bundledRedstoneIOStatus # A table mapping sides to color channels and their respective input values.
function redstone.getBundledInput() end

---Returns bundled redstone input value for a specific side and channel.
---@param side integer # The side to check.
---@param color integer # The color channel to check.
---@return integer input # The bundled input value for the specified side and channel.
function redstone.getBundledInput(side, color) end

---Returns bundled redstone output values for all sides and channels.
---@return bundledRedstoneIOStatus # A table mapping sides to color channels and their respective output values.
function redstone.getBundledOutput() end

---Returns bundled redstone output values for all sides and channels.
---@return integer # A table mapping sides to color channels and their respective output values.
function redstone.getBundledOutput(side, color) end

---Sets bundled redstone output values for a specific side and channel.
---@param side integer # The side to set the output on.
---@param color integer # The color channel to set the output on.
---@param value integer # The bundled output value to set.
---@return integer oldValue # The previous bundled output value for the specified side and channel.
function redstone.setBundledOutput(side, color, value) end

---Sets bundled redstone output values for multiple sides and channels.
---@param values bundledRedstoneIOStatus # A table mapping sides to color channels and their respective new output values.
---@return bundledRedstoneIOStatus # A table mapping sides to color channels and their respective old output values.
function redstone.setBundledOutput(values) end

---Gets the wireless redstone input level.
---@return integer input # The wireless redstone input level.
function redstone.getWirelessInput() end

---Gets the wireless redstone output state.
---@return boolean output # True if wireless output is enabled, false otherwise.
function redstone.getWirelessOutput() end

---Sets the wireless redstone output state.
---@param value boolean # The desired wireless output state.
---@return boolean oldValue # The previous wireless output state.
function redstone.setWirelessOutput(value) end

---Gets the current wireless redstone frequency.
---@return integer frequency # The currently set wireless redstone frequency.
function redstone.getWirelessFrequency() end

---Sets the wireless redstone frequency.
---@param frequency integer # The desired wireless frequency.
---@return integer oldFrequency # The previous wireless frequency.
function redstone.setWirelessFrequency(frequency) end

---Gets the current wake-up threshold.
---@return integer threshold # The current wake-up threshold.
function redstone.getWakeThreshold() end

---Sets the wake-up threshold.
---@param threshold integer # The desired wake-up threshold.
---@return integer oldThreshold # The previous wake-up threshold.
function redstone.setWakeThreshold(threshold) end
