---@meta _

---The Tape Drive from Computronics.
---@class tape_drive: BaseComponent
---@field type "tape_drive"
local tapeDrive = {}

---Returns the current label of the tape, or nil if there is no tape inserted
---@return string
function tapeDrive.getLabel() end

---Returns the position of the tape, in bytes
---@return number
function tapeDrive.getPosition() end

---Returns the size of the tape, in bytes
---@return number
function tapeDrive.getSize() end

---Returns the current state of the tape drive
---@return string
function tapeDrive.getState() end

---Returns true if the tape drive is empty or the inserted tape has reached its end
---@return boolean
function tapeDrive.isEnd() end

---Returns true if there is a tape inserted
---@return boolean
function tapeDrive.isReady() end

---Make the Tape Drive start playing the tape. Returns true on success
---@return boolean
function tapeDrive.play() end

---Reads and returns the specified amount of bytes or a single byte from the tape. Returns nil if there is no tape inserted
---@param length? number
---@return string
function tapeDrive.read(length) end

---Seeks the specified amount of bytes on the tape. Negative values for rewinding. Returns the amount of bytes sought, or nil if there is no tape inserted
---@param length number
---@return number
function tapeDrive.seek(length) end

---Sets the label of the tape. Returns the new label, or nil if there is no tape inserted
---@param label string
---@return string
function tapeDrive.setLabel(label) end

---Sets the speed of the tape drive. Needs to be beween 0.25 and 2. Returns true on success
---@param speed number
---@return boolean
function tapeDrive.setSpeed(speed) end

---Sets the volume of the tape drive. Needs to be beween 0 and 1
---@param speed number
function tapeDrive.setVolume(speed) end

---Make the Tape Drive stop playing the tape. Returns true on success
---@return boolean
function tapeDrive.stop() end

---Writes the specified data to the tape if there is one inserted
---@param data number or string
function tapeDrive.write(data) end
