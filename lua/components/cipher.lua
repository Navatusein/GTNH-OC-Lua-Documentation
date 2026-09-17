---@meta _

---The Cipher Block from Computronics.
---@class cipher: BaseComponent
---@field type "cipher"
local cipher = {}

---Decrypts the specified message
---@param message string
---@return string
function cipher.decrypt(message) end

---Encrypts the specified message
---@param message string
---@return string
function cipher.encrypt(message) end

---Returns whether the block is currently locked
---@return boolean
function cipher.isLocked() end

---Sets whether the block is currently locked
---@param locked boolean
function cipher.setLocked(locked) end
