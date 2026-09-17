---@meta "text"

---@class TextLibrary
local text = {}

---Converts tabs in a string to spaces, aligning at the specified tab width.
---@param value string # The string to process.
---@param tabWidth number # The number of spaces per tab.
---@return string # The resulting string with tabs replaced by spaces.
function text.detab(value, tabWidth) end

---Pads a string with whitespace on the right up to the specified length.
---@param value string # The string to pad.
---@param length number # The desired total length of the string.
---@return string # The padded string.
function text.padRight(value, length) end

---Pads a string with whitespace on the left up to the specified length.
---@param value string # The string to pad.
---@param length number # The desired total length of the string.
---@return string # The padded string.
function text.padLeft(value, length) end

---Trims whitespace characters from the start and end of a string.
---@param value string # The string to trim.
---@return string # The trimmed string.
function text.trim(value) end

---Wraps a string to fit within a specified width.
---@param value string # The string to wrap.
---@param width number # The maximum width of a line.
---@param maxWidth number # The maximum width allowed for wrapping.
---@return string # The wrapped string.
function text.wrap(value, width, maxWidth) end

---Returns a wrapper function around `text.wrap`.
---@param value string # The string to wrap.
---@param width number # The maximum width of a line.
---@param maxWidth number # The maximum width allowed for wrapping.
---@return function # A function that performs wrapping.
function text.wrappedLines(value, width, maxWidth) end

---Splits a string into a table of words using space as the delimiter.
---@param value string # The string to tokenize.
---@return table # A table of tokens (words).
function text.tokenize(value) end


---Escapes the Lua pattern magic characters in a string, so that it can be used as a
---literal inside a pattern.
---@param txt string # The text to escape.
---@return string
function text.escapeMagic(txt) end

---Removes the escaping added by `text.escapeMagic`.
---@param txt string # The escaped text.
---@return string
function text.removeEscapes(txt) end

---Splits a string on any of the given delimiters, keeping the delimiters themselves
---as elements unless told to drop them.
---@param input string # The text to split.
---@param delimiters string[] # The patterns to split on.
---@param dropDelims? boolean # Whether to leave the delimiters out of the result.
---@param di? integer # Index of the delimiter to start with.
---@return string[]
function text.split(input, delimiters, dropDelims, di) end

return text
