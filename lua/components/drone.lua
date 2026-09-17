---@meta _

---The drone.
---
---Most of this API is shared with the robot; `move` is not - a drone is given a
---target offset and flies there on its own, instead of stepping block by block.
---
---Written from the mod source and the robot dump, not verified against a drone
---dump yet.
---@class drone: BaseComponent
---@field type "drone"
local drone = {}

---Compare the block on the specified side with the one in the selected slot. Returns true if equal.
---@param side? number
---@param fuzzy? boolean
---@return boolean
function drone.compare(side, fuzzy) end

---Compare the fluid in the selected tank with the fluid in the specified tank on the specified side. Returns true if equal.
---@param side? number
---@param tank? number
---@return boolean
function drone.compareFluid(side, tank) end

---Compares the fluids in the selected and the specified tank. Returns true if equal.
---@param index number
---@return boolean
function drone.compareFluidTo(index) end

---Compare the contents of the selected slot to the contents of the specified slot.
---@param otherSlot? number
---@param checkNBT? boolean
---@return boolean
function drone.compareTo(otherSlot, checkNBT) end

---Get the number of items in the specified slot, otherwise in the selected slot.
---@param slot? number
---@return number
function drone.count(slot) end

---Checks the contents of the block on the specified sides and returns the findings.
---@param side number
---@return boolean, string
function drone.detect(side) end

---Drains the specified amount of fluid from the specified side. Returns the amount drained, or an error message.
---@param side? boolean
---@param amount? number
---@return boolean, number, string
function drone.drain(side, amount) end

---Drops items from the selected slot towards the specified side.
---@param side? number
---@param count? number
---@return boolean
function drone.drop(side, count) end

---Eject the specified amount of fluid to the specified side. Returns the amount ejected or an error message.
---@param side? number
---@param amount? number
---@return boolean, number of string
function drone.fill(side, amount) end

---Get the currently set acceleration.
---@return number
function drone.getAcceleration() end

---Get the current color of the activity light as an integer encoded RGB value (0xRRGGBB).
---@return number
function drone.getLightColor() end

---Get the maximum velocity, in m/s.
---@return number
function drone.getMaxVelocity() end

---Get the current distance to the target position.
---@return number
function drone.getOffset() end

---Get the status text currently being displayed in the GUI.
---@return string
function drone.getStatusText() end

---Get the current velocity in m/s.
---@return number
function drone.getVelocity() end

---The size of this device's internal inventory.
---@return number
function drone.inventorySize() end

---Change the target position by the specified offset.
---@param dx number
---@param dy number
---@param dz number
function drone.move(dx, dy, dz) end

---Get the name of the agent.
---@return string
function drone.name() end

---Place a block towards the specified side. The `face' allows a more precise click calibration, and is relative to the targeted blockspace.
---@param side? number
---@param face? number
---@param sneaky? boolean
---@return boolean
function drone.place(side, face, sneaky) end

---Get the currently selected slot; set the selected slot if specified.
---@param slot? number
---@return number
function drone.select(slot) end

---Select a tank and/or get the number of the currently selected tank.
---@param index? number
---@return number
function drone.selectTank(index) end

---Try to set the acceleration to the specified value and return the new acceleration.
---@param value number
---@return number
function drone.setAcceleration(value) end

---Set the color of the activity light to the specified integer encoded RGB value (0xRRGGBB).
---@param value number
---@return number
function drone.setLightColor(value) end

---Set the status text to display in the GUI, returns new value.
---@param value string
---@return string
function drone.setStatusText(value) end

---Get the remaining space in the specified slot, otherwise in the selected slot.
---@param slot? number
---@return number
function drone.space(slot) end

---Suck up items from the specified side.
---@param side? number
---@param count? number
---@return boolean
function drone.suck(side, count) end

---Perform a 'left click' towards the specified side. The `face' allows a more precise click calibration, and is relative to the targeted blockspace.
---@param side? number
---@param face? number
---@param sneaky? boolean
---@return boolean, string
function drone.swing(side, face, sneaky) end

---The number of tanks installed in the device.
---@return number
function drone.tankCount() end

---Get the fluid amount in the specified or selected tank.
---@param index? number
---@return number
function drone.tankLevel(index) end

---Get the remaining fluid capacity in the specified or selected tank.
---@param index? number
---@return number
function drone.tankSpace(index) end

---Move the specified amount of fluid from the selected tank into the specified tank.
---@param index? number
---@param count? number
---@return boolean
function drone.transferFluidTo(index, count) end

---Move up to the specified amount of items from the selected slot into the specified slot.
---@param toSlot? number
---@param amount? number
---@return boolean
function drone.transferTo(toSlot, amount) end

---Perform a 'right click' towards the specified side. The `face' allows a more precise click calibration, and is relative to the targeted blockspace.
---@param side? number
---@param face? number
---@param sneaky? boolean
---@param duration? number
---@return boolean, string
function drone.use(side, face, sneaky, duration) end
