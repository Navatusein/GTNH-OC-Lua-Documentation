---@meta "nbt"

---Readable access to the NBT tables a Data Card returns.
---
---`component.data.decodeNBT` gives back tags in their raw form, where every value is a
---table carrying `__nbt_type` and `__value` instead of the value itself. This library
---wraps such a tree in proxies that read like plain Lua tables, and unwraps them again
---on the way back into `encodeNBT`.
---
---Nothing in OpenOS requires this library, it exists for user scripts:
---```lua
---local nbt = require("nbt")
---local data = nbt.patch(component.data)
---local tag = data.decodeNBT(stack.tag)
---print(tag.display.Name)          -- reads like a normal table
---tag:set_int("Damage", 0)         -- writes keep the NBT type
---```
---@class NbtLibrary
local nbt = {}

---A wrapped NBT tag. Reading a key gives the value, or another proxy for a nested tag.
---Assigning a key keeps the type the tag already had; use the typed setters to add new
---keys or to change a type on purpose.
---@class NbtTag
local nbtTag = {}

---Returns a copy of the component whose `decodeNBT` returns wrapped tags and whose
---`encodeNBT` accepts them. Everything else on the component is passed straight
---through, and patching twice is a no-op.
---@param component table # A component with `decodeNBT` and `encodeNBT`, that is a Data Card.
---@return table # The patched component, or the original one if it has no NBT methods.
function nbt.patch(component) end

---Wraps a raw NBT tree in proxies.
---@param data table # A tree as `decodeNBT` returns it.
---@return NbtTag|any # The proxy, or the value unchanged if it is not a tag.
function nbt.wrap(data) end

---Unwraps a proxy back into the raw tree that `encodeNBT` expects.
---@param data NbtTag|any
---@return table|any
function nbt.unwrap(data) end

---Sets a key to a string, tagged as `string`.
---@param key string|integer
---@param value string
function nbtTag:set_string(key, value) end

---Sets a key to a boolean, tagged as `boolean`.
---@param key string|integer
---@param value boolean
function nbtTag:set_boolean(key, value) end

---Sets a key to a number, tagged as `byte`.
---@param key string|integer
---@param value number
function nbtTag:set_byte(key, value) end

---Sets a key to a number, tagged as `short`.
---@param key string|integer
---@param value number
function nbtTag:set_short(key, value) end

---Sets a key to a number, tagged as `int`.
---@param key string|integer
---@param value number
function nbtTag:set_int(key, value) end

---Sets a key to a number, tagged as `long`.
---@param key string|integer
---@param value number
function nbtTag:set_long(key, value) end

---Sets a key to a number, tagged as `float`.
---@param key string|integer
---@param value number
function nbtTag:set_float(key, value) end

---Sets a key to a number, tagged as `double`.
---@param key string|integer
---@param value number
function nbtTag:set_double(key, value) end

---Sets a key to a table, tagged as `byte_array`.
---@param key string|integer
---@param value table
function nbtTag:set_byte_array(key, value) end

---Sets a key to a table, tagged as `int_array`.
---@param key string|integer
---@param value table
function nbtTag:set_int_array(key, value) end

---Sets a key to a table, tagged as `list`.
---@param key string|integer
---@param value table
function nbtTag:set_list(key, value) end

---Sets a key to a table, tagged as `compound`.
---@param key string|integer
---@param value table
function nbtTag:set_compound(key, value) end

return nbt
