---@meta _

---A vanilla jukebox, seen through an adapter.
---@class jukebox: BaseComponent
---@field type "jukebox"
local jukebox = {}

---Get the title of the record currently in the jukebox.
---@return string
function jukebox.getRecord() end

---Start playing the record currently in the jukebox.
function jukebox.play() end

---Stop playing the record currently in the jukebox.
function jukebox.stop() end
