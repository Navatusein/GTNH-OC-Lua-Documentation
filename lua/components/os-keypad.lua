---@meta _

---@class os_keypad: BaseComponent
---@field type "os_keypad"
local os_keypad = {}

---Sets whether the keypad should beep when keys are pressed.
---@param shouldBeep boolean # True to enable beeping, false to disable.
---@return boolean success # True if the setting was applied successfully.
function os_keypad.setShouldBeep(shouldBeep) end

---Sets the text and color of a specific key on the keypad.
---@param idx number # The key index (valid range: 1-2 characters).
---@param text string # The text to display on the key (1-2 characters).
---@param color number # The color of the key.
---@return boolean success # True if the key was set successfully.
function os_keypad.setKey(idx, text, color) end

---Sets the name of the event that is sent when a key is pressed.
---@param name string # The custom event name to send.
---@return boolean success # True if the event name was set successfully.
function os_keypad.setEventName(name) end

---Sets the display string and optional color on the keypad.
---@param text string # The text to display (0-8 characters).
---@param color number|nil # The color of the display (valid range: 0-7).
---@return boolean success # True if the display was updated successfully.
function os_keypad.setDisplay(text, color) end

return os_keypad
