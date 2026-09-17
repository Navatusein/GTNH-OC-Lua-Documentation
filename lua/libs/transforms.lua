---@meta "transforms"

---Range helpers for tables, used by the shell while parsing command lines.
---
---Every function takes an optional range as a first and last index, where a negative
---index counts from the end, as `-1` for the last element. The range is applied
---without copying the table.
---
---This is a helper for `sh`, `ls` and `text`, and rarely useful on its own.
---@class TransformsLibrary
local transforms = {}

---Finds where a sub-sequence starts inside a table.
---@param tbl table # The table to search.
---@param pred function|table # A predicate called as `(element, index, tbl)`, or a list of sub-sequences to look for.
---@param f? integer # The first index to search from. Negative counts from the end.
---@param l? integer # The last index to search to. Negative counts from the end.
---@return integer|nil # The index where the match starts, or `nil`.
---@return integer|nil # How many elements matched.
function transforms.first(tbl, pred, f, l) end

---Tells whether a table starts with the given sequence at the given position.
---@param tbl table # The table to test.
---@param v table # The sequence to look for.
---@param f? integer # Where to start comparing. Negative counts from the end.
---@param l? integer # Where to stop comparing. Negative counts from the end.
---@return boolean|nil # `true` on a match, `nil` otherwise.
function transforms.begins(tbl, v, f, l) end

---Joins several tables into one, keeping the `n` field when the inputs carry one.
---@param ... table
---@return table|nil # The joined table, or `nil` and an error message when an argument is not a table.
---@return string|nil
function transforms.concat(...) end

return transforms
