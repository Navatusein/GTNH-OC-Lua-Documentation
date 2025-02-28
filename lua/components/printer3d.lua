---@meta _

---@class printer3d: BaseComponent
---@field type "printer3d"
local printer3d = {}

---Sets whether the printed block should emit redstone when in its active state.
---@param value boolean|number # True/false to enable/disable or a number representing the redstone strength.
function printer3d.setRedstoneEmitter(value) end

---Gets whether the printed block emits redstone when in its active state.
---@return boolean isEmitter # True if the block emits redstone.
---@return number strength # The redstone strength level.
function printer3d.isRedstoneEmitter() end

---Sets a label for the block being printed.
---@param value string # The label to assign to the printed block.
function printer3d.setLabel(value) end

---Gets the current label of the block being printed.
---@return string label # The current label of the block.
function printer3d.getLabel() end

---Sets whether the printed block should automatically return to its off state (button mode).
---@param value boolean # True to enable button mode, false to disable.
function printer3d.setButtonMode(value) end

---Gets whether the printed block is in button mode.
---@return boolean isButton # True if the block is in button mode.
function printer3d.isButtonMode() end

---Commits and begins printing the current configuration.
---@param count number|nil # The number of copies to print (default is 1).
---@return boolean success # True if the commit was successful.
function printer3d.commit(count) end

---Gets the maximum allowed number of shapes in a single printed block.
---@return number maxShapes # The maximum shape count.
function printer3d.getMaxShapeCount() end

---Gets the current number of shapes in the printed block configuration.
---@return number shapeCount # The number of shapes.
function printer3d.getShapeCount() end

---Sets whether the printed block should be collidable.
---@param collideOff boolean # Whether the block is collidable in the off state.
---@param collideOn boolean # Whether the block is collidable in the on state.
function printer3d.setCollidable(collideOff, collideOn) end

---Gets whether the printed block is collidable.
---@return boolean collidableOff # True if the block is collidable in the off state.
---@return boolean collidableOn # True if the block is collidable in the on state.
function printer3d.isCollidable() end

---Sets a tooltip for the block being printed.
---@param value string # The tooltip text.
function printer3d.setTooltip(value) end

---Gets the current tooltip of the block being printed.
---@return string tooltip # The current tooltip text.
function printer3d.getTooltip() end

---Adds a shape to the printer's configuration.
---@param minX number # Minimum X coordinate.
---@param minY number # Minimum Y coordinate.
---@param minZ number # Minimum Z coordinate.
---@param maxX number # Maximum X coordinate.
---@param maxY number # Maximum Y coordinate.
---@param maxZ number # Maximum Z coordinate.
---@param texture string # The texture to apply.
---@param state boolean|nil # Whether the shape is for the on/off state (default: off).
---@param tint number|nil # The color tint applied to the shape.
function printer3d.addShape(minX, minY, minZ, maxX, maxY, maxZ, texture, state, tint) end

---Sets the light level of the printed block.
---@param value number # The light level (0-15).
function printer3d.setLightLevel(value) end

---Gets the light level of the printed block.
---@return number lightLevel # The light level (0-15).
function printer3d.getLightLevel() end

---Resets the printer configuration and stops the current print job.
function printer3d.reset() end

---Gets the current status of the printer.
---@return string state # The current state (`"busy"` or `"idle"`).
---@return number|boolean progress # The progress if busy, or a validity check result if idle.
function printer3d.status() end

return printer3d
