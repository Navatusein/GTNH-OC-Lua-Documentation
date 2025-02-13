---@meta _

---@class chat_box: BaseComponent
---@field type "chat_box"
local chat_box = {}

---Gets the current chat distance of the chat box.
---@return number # The current chat distance.
function chat_box.getDistance() end

---Sets the maximum chat distance of the chat box.
---@param distance number # The new chat distance.
---@return number # The new chat distance.
function chat_box.setDistance(distance) end

---Gets the current name of the chat box.
---@return string # The name of the chat box.
function chat_box.getName() end

---Sets the name of the chat box.
---@param name string # The new name to set.
---@return string # The new name of the chat box.
function chat_box.setName(name) end

---Makes the chat box say something in chat.
---@param text string # The text to say.
---@param distance number|nil # The distance at which the message will be heard. Defaults to the currently set distance.
---@return boolean # True if the message was sent successfully.
function chat_box.say(text, distance) end
