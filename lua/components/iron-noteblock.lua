---@meta _

---The Iron Note Block from Computronics.
---@class iron_noteblock: BaseComponent
---@field type "iron_noteblock"
local ironNoteblock = {}

---Plays the specified note with the specified instrument or the default one; volume may be a number between 0 and 1
---@param instrument? number or string
---@param note? number
---@param volume? number
function ironNoteblock.playNote(instrument, note, volume) end
