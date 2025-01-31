---@meta "unicode"

---@class unicode
local unicode = {}

---UTF-8 aware version of `string.char`.  
---Allows creating UTF-8 strings with Unicode code points.
---@param value number # Unicode code point.
---@vararg number # Additional Unicode code points.
---@return string # The resulting UTF-8 encoded string.
function unicode.char(value, ...) end

---Returns the display width of the first character in a given string.  
---For example, `unicode.charWidth("シ")` returns `2`, while `"a"` returns `1`.
---@param value string # The UTF-8 string.
---@return number # The width of the first character.
function unicode.charWidth(value) end

---Checks if the first character in a string is a wide character (width > 1).
---@param value string # The UTF-8 string.
---@return boolean # True if the first character is wide, false otherwise.
function unicode.isWide(value) end

---UTF-8 aware version of `string.len`.  
---Counts characters instead of bytes.  
---For example, `unicode.len("Ümläüt")` returns `6`, while `string.len` would return `9`.
---@param value string # The UTF-8 string.
---@return number # The number of characters in the string.
function unicode.len(value) end

---UTF-8 aware version of `string.lower`.  
---Converts a string to lowercase, preserving Unicode characters.
---@param value string # The UTF-8 string.
---@return string # The lowercase version of the string.
function unicode.lower(value) end

---UTF-8 aware version of `string.upper`.  
---Converts a string to uppercase, preserving Unicode characters.
---@param value string # The UTF-8 string.
---@return string # The uppercase version of the string.
function unicode.upper(value) end

---UTF-8 aware version of `string.reverse`.  
---Reverses the character order in a string.  
---For example, `unicode.reverse("Ümläüt")` returns `"tüälmÜ"`, while `string.reverse` would return `"tälm"`.
---@param value string # The UTF-8 string.
---@return string # The reversed string.
function unicode.reverse(value) end

---UTF-8 aware version of `string.sub`.  
---Extracts a substring using character positions instead of byte positions.
---@param value string # The UTF-8 string.
---@param i number # The starting character position.
---@param j number|nil # The ending character position. Defaults to the end of the string.
---@return string # The extracted substring.
function unicode.sub(value, i, j) end

---Returns the total display width of a given string, accounting for wide characters.
---@param value string # The UTF-8 string.
---@return number # The display width of the string.
function unicode.wlen(value) end

---Truncates a string so that its display width does not exceed a specified limit.  
---If there are not enough characters to reach the specified width, the function errors.
---@param value string # The UTF-8 string.
---@param count number # The maximum display width allowed.
---@return string # The truncated string.
function unicode.wtrunc(value, count) end

return unicode