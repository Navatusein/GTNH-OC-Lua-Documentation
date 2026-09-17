---@meta _

---The Disk Drive block, and the disk drive mountable of a server rack.
---@class disk_drive: BaseComponent
---@field type "disk_drive"
local diskDrive = {}

---Eject the currently present medium from the drive.
---@param velocity? number
---@return boolean
function diskDrive.eject(velocity) end

---Checks whether some medium is currently in the drive.
---@return boolean
function diskDrive.isEmpty() end

---Return the internal floppy disk address
---@return string
function diskDrive.media() end
