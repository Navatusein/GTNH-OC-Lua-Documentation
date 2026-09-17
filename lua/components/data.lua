---@meta _

---The Data Card.
---The tier of the card decides which of these methods are present.
---@class data: BaseComponent
---@field type "data"
local data = {}

---Computes CRC-32 hash of the data. Result is binary data.
---@param data string
---@return string
function data.crc32(data) end

---Applies base64 decoding to the data.
---@param data string
---@return string
function data.decode64(data) end

---Decode gzipped binary NBT data. Return NBT data as table.
---@param data string
---@return table
function data.decodeNBT(data) end

---Decodes gzipped binary NBT data into an SNBT string.
---@param data string
---@return string
function data.decodeNBTStr(data) end

---Decrypt data with AES.
---@param data string
---@param key string
---@param iv string
---@return string
function data.decrypt(data, key, iv) end

---Applies deflate compression to the data.
---@param data string
---@return string
function data.deflate(data) end

---Restores key from its string representation.
---@param data string
---@param type string
---@return userdata
function data.deserializeKey(data, type) end

---Generates a shared key. ecdh(a.priv, b.pub) == ecdh(b.priv, a.pub)
---@param priv userdata
---@param pub userdata
---@return string
function data.ecdh(priv, pub) end

---Signs or verifies data.
---@param data string
---@param key? userdata
---@param sig? string
---@return string, boolean
function data.ecdsa(data, key, sig) end

---Applies base64 encoding to the data.
---@param data string
---@return string
function data.encode64(data) end

---Encode a table into gzipped binary NBT data. Returns the binary data as a string.
---@param nbt table
---@return string
function data.encodeNBT(nbt) end

---Encodes an SNBT string into gzipped binary NBT data.
---@param nbt string
---@return string
function data.encodeNBTStr(nbt) end

---Encrypt data with AES. Result is binary data.
---@param data string
---@param key string
---@param iv string
---@return string
function data.encrypt(data, key, iv) end

---Generates key pair. Returns: public, private keys. Allowed key lengths: 256, 384 bits.
---@param bitLen? number
---@return userdata, userdata
function data.generateKeyPair(bitLen) end

---The maximum size of data that can be passed to other functions of the card.
---@return number
function data.getLimit() end

---Applies inflate decompression to the data.
---@param data string
---@return string
function data.inflate(data) end

---Computes MD5 hash of the data. Result is binary data.
---@param data? string
---@param hmacKey? string
---@return string
function data.md5(data, hmacKey) end

---Generates secure random binary data.
---@param len number
---@return string
function data.random(len) end

---Computes SHA2-256 hash of the data. Result is binary data.
---@param data? string
---@param hmacKey? string
---@return string
function data.sha256(data, hmacKey) end
