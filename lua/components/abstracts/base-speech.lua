---@meta _

---Text to speech, from Computronics.
---@class BaseSpeech: BaseComponent
local baseSpeech = {}

---Returns true if the device is currently processing text.
---@return boolean
function baseSpeech.isProcessing() end

---Say the specified message. Returns true on success, false and an error message otherwise.
---@param text string
---@return boolean
function baseSpeech.say(text) end

---Sets the volume of the speech box. Needs to be beween 0 and 1
---@param speed number
function baseSpeech.setVolume(speed) end

---Stops the currently spoken phrase. Returns true on success, false and an error message otherwise.
---@return boolean
function baseSpeech.stop() end
