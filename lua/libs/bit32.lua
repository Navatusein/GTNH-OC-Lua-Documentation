---@meta "bit32"

---Bitwise operations on 32 bit integers.
---
---This is the Lua 5.2 `bit32` library. OpenOS provides it on the 5.3 architecture as
---well, implemented on top of the native operators, so it works whichever Lua version
---the computer runs. Every argument is taken modulo 2^32, and every result is an
---unsigned integer in the range 0 to 2^32-1.
---@class Bit32Library
local bit32 = {}

---Bitwise AND of all arguments.
---@param ... integer
---@return integer
function bit32.band(...) end

---Bitwise OR of all arguments.
---@param ... integer
---@return integer
function bit32.bor(...) end

---Bitwise XOR of all arguments.
---@param ... integer
---@return integer
function bit32.bxor(...) end

---Bitwise NOT of the argument.
---@param x integer
---@return integer
function bit32.bnot(x) end

---Tells whether the bitwise AND of all arguments is not zero.
---@param ... integer
---@return boolean
function bit32.btest(...) end

---Shifts left, filling with zeroes. A negative displacement shifts right.
---@param x integer
---@param disp integer # How many bits to shift by.
---@return integer
function bit32.lshift(x, disp) end

---Shifts right, filling with zeroes. A negative displacement shifts left.
---@param x integer
---@param disp integer # How many bits to shift by.
---@return integer
function bit32.rshift(x, disp) end

---Shifts right, filling with copies of the highest bit, which keeps the sign.
---@param x integer
---@param disp integer # How many bits to shift by.
---@return integer
function bit32.arshift(x, disp) end

---Rotates left, so bits shifted off the top come back in at the bottom.
---@param x integer
---@param disp integer # How many bits to rotate by.
---@return integer
function bit32.lrotate(x, disp) end

---Rotates right, so bits shifted off the bottom come back in at the top.
---@param x integer
---@param disp integer # How many bits to rotate by.
---@return integer
function bit32.rrotate(x, disp) end

---Reads a range of bits as an unsigned number.
---@param n integer # The value to read from.
---@param field integer # The position of the lowest bit, counting from 0.
---@param width? integer # How many bits to read. Defaults to 1.
---@return integer
function bit32.extract(n, field, width) end

---Returns a copy of a value with a range of bits replaced.
---@param n integer # The value to change.
---@param v integer # The bits to put in.
---@param field integer # The position of the lowest bit, counting from 0.
---@param width? integer # How many bits to replace. Defaults to 1.
---@return integer
function bit32.replace(n, v, field, width) end

return bit32
