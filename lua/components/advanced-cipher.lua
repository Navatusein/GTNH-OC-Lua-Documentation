---@meta _

---The Advanced Cipher Block from Computronics.
---@class advanced_cipher: BaseComponent
---@field type "advanced_cipher"
local advancedCipher = {}

---Creates the key generator from the two given prime numbers
---@param num1 number
---@param num2 number
---@return keygen
function advancedCipher.createKeySet(num1, num2) end

---Creates the key generator from two random prime numbers (optionally with given key length)
---@param keylength? number
---@return keygen
function advancedCipher.createRandomKeySet(keylength) end

---Decrypts the specified message using the specified RSA key
---@param message string
---@param privateKey table
---@return string
function advancedCipher.decrypt(message, privateKey) end

---Encrypts the specified message using the specified public RSA key
---@param message string
---@param publicKey table
---@return string
function advancedCipher.encrypt(message, publicKey) end
