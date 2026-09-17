---@meta _

---A vanilla note block, seen through an adapter.
---@class note_block: BaseComponent
---@field type "note_block"
local noteBlock = {}

---Get the currently set pitch on this note block.
---@return number
function noteBlock.getPitch() end

---Set the pitch for this note block. Must be in the interval [1, 25].
---@param value number
function noteBlock.setPitch(value) end

---Triggers the note block if possible. Allows setting the pitch for to save a tick.
---@param pitch? number
---@return boolean
function noteBlock.trigger(pitch) end
