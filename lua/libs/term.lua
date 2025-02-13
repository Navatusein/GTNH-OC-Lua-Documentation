---@meta "term"

---@class term
local term = {}

---Checks if the term API is available for use.
---@return boolean # True if a GPU and screen are present, otherwise false.
function term.isAvailable() end

---Gets the viewport dimensions and offsets.
---@return number width # Width.
---@return number height # Height.
---@return number offsetX # X offset.
---@return number offsetY # Y offset.
---@return number relativeX # Relative x.
---@return number relativeY # Relative y.
function term.getViewport() end

---Gets the GPU proxy used by the term API.
---@return gpu # The GPU proxy.
function term.gpu() end

---Waits for an event, blinking the cursor while waiting.
---@vararg any # Arguments passed to `event.pull`.
---@return any # The result of the event.
function term.pull(...) end

---Gets the current cursor position.
---@return number column # Column of the cursor.
---@return number row # Row of the cursor.
function term.getCursor() end

---Sets the cursor position.
---@param col number # The column to move the cursor to.
---@param row number # The row to move the cursor to.
function term.setCursor(col, row) end

---Checks if the cursor blink is enabled.
---@return boolean # True if cursor blink is enabled, otherwise false.
function term.getCursorBlink() end

---Enables or disables cursor blinking.
---@param enabled boolean # True to enable, false to disable cursor blink.
function term.setCursorBlink(enabled) end

---Clears the entire screen and resets the cursor position to (1, 1).
function term.clear() end

---Clears the current line and resets the cursor's horizontal position to 1.
function term.clearLine() end

---Reads user input from the terminal.
---@param history table|nil # Optional history table for cycling through input.
---@param dobreak boolean|nil # Whether to add a new line after input (default true).
---@param hint table|function|nil # Tab completion hint as a table or callback function.
---@param pwchar string|nil # Character to mask input with (e.g., "*").
---@return string|nil|boolean # Entered string, nil if pipe is closed, false if interrupted.
function term.read(history, dobreak, hint, pwchar) end

---Writes text to the terminal.
---@param value string # The text to write.
---@param wrap boolean|nil # Whether to enable word wrapping (default false).
function term.write(value, wrap) end

---Binds a GPU proxy to the terminal.
---@param gpu table # The GPU proxy to bind.
function term.bind(gpu) end

---Gets the screen address the terminal is bound to.
---@return string # The screen address.
function term.screen() end

---Gets the keyboard address the terminal accepts key events from.
---@return string # The keyboard address.
function term.keyboard() end

return term
