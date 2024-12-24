---@meta "text"

---@class text
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

return text
