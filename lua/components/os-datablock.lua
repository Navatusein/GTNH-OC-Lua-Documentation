---@meta _

---The Data Block from OpenSecurity.
---@class os_datablock: BaseComponent
---@field type "os_datablock"
local osDatablock = {}

---Checks bCrypt input vs hash supplied
---@param arg1 string
---@param hash string
---@return boolean
function osDatablock.bCryptCheck(arg1, hash) end

---Computes the bCryptHash of the input plaintext, optionally supply rounds (4-15)
---@param arg1 string
---@param arg2 integer
---@return string
function osDatablock.bCryptHash(arg1, arg2) end

---Computes CRC-32 hash of the data. Result is in binary format
---@param data string
---@return string
function osDatablock.crc32(data) end

---Applies base64 decoding to the data.
---@param data string
---@return string
function osDatablock.decode64(data) end

---Applies deflate compression to the data.
---@param data string
---@return string
function osDatablock.deflate(data) end

---Applies base64 encoding to the data.
---@param data string
---@return string
function osDatablock.encode64(data) end

---The maximum size of data that can be passed to other functions of the card.
---@return number
function osDatablock.getLimit() end

---The mod gives no description for this method.
function osDatablock.greet() end

---Applies inflate decompression to the data.
---@param data string
---@return string
function osDatablock.inflate(data) end

---function(data:string):string -- Computes MD5 hash of the data. Result is in binary format
---@param data string
---@return string
function osDatablock.md5(data) end

---Applies rot13 to the data.
---@param data string
---@return string
function osDatablock.rot13(data) end

---Computes SHA2-256 hash of the data. Result is in binary format.
---@param data string
---@return string
function osDatablock.sha256(data) end
