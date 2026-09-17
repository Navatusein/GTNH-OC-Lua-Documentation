---@meta _

---@class eeprom: BaseComponent
---@field type "eeprom"
local eeprom = {}

---Get the currently stored BIOS code.
---@return string # The stored byte array.
function eeprom.get() end

---Overwrite the currently stored BIOS code.
---@param data string # The new byte array. Limited to 4 KiB by default.
function eeprom.set(data) end

---Get the label of the EEPROM.
---@return string # The current label.
function eeprom.getLabel() end

---Set the label of the EEPROM.
---@param data string # The new label.
---@return string # The new label, which may be truncated.
function eeprom.setLabel(data) end

---Get the storage capacity for the BIOS code.
---@return integer # The capacity in bytes.
function eeprom.getSize() end

---Get the currently stored configuration data.
---
---This is a second, smaller storage area, conventionally used to hold the address
---of the filesystem to boot from.
---@return string # The stored byte array.
function eeprom.getData() end

---Overwrite the currently stored configuration data.
---@param data string # The new byte array. Limited to 256 bytes by default.
function eeprom.setData(data) end

---Get the storage capacity for the configuration data.
---@return integer # The capacity in bytes.
function eeprom.getDataSize() end

---Get the checksum of the data on this EEPROM.
---@return string # The checksum.
function eeprom.getChecksum() end

---Make this EEPROM readonly if it isn't already.
---
---This process cannot be reversed.
---@param checksum string # The checksum as returned by `getChecksum`.
---@return boolean # True on success.
function eeprom.makeReadonly(checksum) end
