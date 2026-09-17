---@meta _

---The RSA key generator returned by the Advanced Cipher Block of Computronics.
---
---Key generation runs in the background: poll `finished`, then read the pair with `getKeys`.
---@class keygen
local keygen = {}

---Returns whether key generation has finished.
---@return boolean
function keygen.finished() end

---Returns the two generated keys, the public one first.
---@return table|nil publicKey # `nil` while the keys are still being generated.
---@return table|nil privateKey
function keygen.getKeys() end
