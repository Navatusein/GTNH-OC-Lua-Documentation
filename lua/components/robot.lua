---@meta _

---@class robot: BaseComponent
---@field type "robot"
local robot = {}

---Gets the durability of the currently equipped tool.
---
---**Robot only** - not available on a robot seen through an adapter.
---@return number # Durability percentage (0-100).
function robot.durability() end

---Moves the robot in the specified direction.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param direction number # One of the valid movement sides (front, back, top, bottom).
---@return boolean # True if movement was successful, false otherwise.
function robot.move(direction) end

---Rotates the robot left or right.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param clockwise boolean # True for clockwise, false for counterclockwise.
---@return boolean # True if rotation was successful, false otherwise.
function robot.turn(clockwise) end

---Gets the name of the robot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@return string # The robot's name.
function robot.name() end

---Uses the currently equipped tool against a block or entity.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to interact with.
---@return boolean, string|nil # True if successful, false with a failure reason.
function robot.swing(side) end

---Attempts to use an item as a player would (e.g., right-click).
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to use the item on.
---@param sneaky boolean|nil # Whether to simulate shift-right-click.
---@param duration number|nil # How long the item is used (e.g., charging a bow).
---@return boolean, string|nil # True if successful, false with a reason.
function robot.use(side, sneaky, duration) end

---Places a block from the currently selected inventory slot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to place on.
---@param sneaky boolean|nil # Whether to simulate shift placement.
---@return boolean, string|nil # True if successful, false with a reason.
function robot.place(side, sneaky) end

---Gets the current color of the robot's light.
---
---**Robot only** - not available on a robot seen through an adapter.
---@return number # RGB color as an integer (0xRRGGBB).
function robot.getLightColor() end

---Sets the color of the robot's light.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param value number # RGB color as an integer (0xRRGGBB).
---@return number # The new light color.
function robot.setLightColor(value) end

---Gets the size of the robot's internal inventory.
---
---**Robot only** - not available on a robot seen through an adapter.
---@return number # Number of slots.
function robot.inventorySize() end

---Gets or sets the currently selected inventory slot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param slot number|nil # The slot to select.
---@return number # The currently selected slot.
function robot.select(slot) end

---Gets the number of items in the selected or specified slot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param slot number|nil # The slot to check.
---@return number # Number of items in the slot.
function robot.count(slot) end

---Gets the remaining space in the selected or specified slot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param slot number|nil # The slot to check.
---@return number # Remaining space.
function robot.space(slot) end

---Compares the currently selected slot with another slot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param otherSlot number # The slot to compare with.
---@return boolean # True if items are identical.
function robot.compareTo(otherSlot) end

---Transfers items between internal inventory slots.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param toSlot number # The target slot.
---@param amount number|nil # Number of items to transfer (default: all).
---@return boolean # True if transfer was successful.
function robot.transferTo(toSlot, amount) end

---Gets the number of installed tanks.
---
---**Robot only** - not available on a robot seen through an adapter.
---@return number # Number of tanks.
function robot.tankCount() end

---Selects the active tank.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param tank number # Tank number to select.
function robot.selectTank(tank) end

---Gets the fluid level in the selected or specified tank.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param tank number|nil # The tank to check.
---@return number # Fluid level in millibuckets (mB).
function robot.tankLevel(tank) end

---Gets the remaining capacity in the selected or specified tank.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param tank number|nil # The tank to check.
---@return number # Remaining space in mB.
function robot.tankSpace(tank) end

---Compares the fluid in the selected tank with another tank.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param tank number # The target tank.
---@return boolean # True if fluids are identical.
function robot.compareFluidTo(tank) end

---Transfers fluid between tanks.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param tank number # The target tank.
---@param count number|nil # Amount to transfer (default: 1000 mB).
---@return boolean # True if transfer was successful.
function robot.transferFluidTo(tank, count) end

---Detects a block in front of the robot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to check.
---@return boolean # True if a block is detected.
function robot.detect(side) end

---Compares fluid in the selected tank to the world or another tank.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to check.
---@return boolean # True if fluids match.
function robot.compareFluid(side) end

---Drains fluid from the world or a tank.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to drain from.
---@param count number|nil # Amount to drain (default: 1000 mB).
---@return boolean # True if successful.
function robot.drain(side, count) end

---Fills fluid into the world or a tank.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to fill.
---@param count number|nil # Amount to fill (default: 1000 mB).
---@return boolean # True if successful.
function robot.fill(side, count) end

---Compares a block with the item in the selected slot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to compare with.
---@param fuzzy boolean|nil # Whether to allow slight variations.
---@return boolean # True if blocks are identical.
function robot.compare(side, fuzzy) end

---Drops items from the selected slot.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to drop onto.
---@param count number|nil # Number of items to drop (default: all).
---@return boolean # True if successful.
function robot.drop(side, count) end

---Picks up items from the world or an inventory.
---
---**Robot only** - not available on a robot seen through an adapter.
---@param side number # The side to pick up from.
---@param count number|nil # Number of items to pick up (default: all).
---@return boolean # True if successful.
function robot.suck(side, count) end

---Returns the robot name.
---
---**Adapter only** - a robot cannot read its own name through this component.
---@return string # The name of the robot.
function robot.getName() end

---Sets a new name and returns the old name. The robot must not be running.
---
---**Adapter only** - a robot cannot rename itself through this component.
---@param name string # The new name.
---@return string # The previous name.
function robot.setName(name) end

---Starts the robot.
---
---**Adapter only** - a running robot cannot start itself.
---@return boolean # True if the state changed.
function robot.start() end

---Stops the robot.
---
---**Adapter only** - a robot cannot stop itself through this component.
---@return boolean # True if the state changed.
function robot.stop() end

---Returns whether the robot is running.
---
---**Adapter only** - a robot asking this of itself would always get true.
---@return boolean # True if the robot is running.
function robot.isRunning() end