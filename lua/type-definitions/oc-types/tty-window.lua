---@meta _

---The area the terminal draws into, in characters, and where the cursor is in it.
---
---Reachable as `tty.window`, and handed to `term.bind` and `vt100.parse`.
---@class TtyWindow
---@field gpu gpu|nil # The graphics card bound to the terminal.
---@field fullscreen boolean # Whether the window takes the whole screen.
---@field blink boolean # Whether the cursor blinks.
---@field width integer # The width of the window.
---@field height integer # The height of the window.
---@field dx integer # The x offset of the window on the screen.
---@field dy integer # The y offset of the window on the screen.
---@field x integer # The cursor column, one based, relative to the window.
---@field y integer # The cursor row, one based, relative to the window.
---@field output_buffer string # Text written but not yet flushed to the screen.

---The raw reading and writing behind the terminal, reachable as `tty.stream`.
---
---Prefer `io.read`, `io.write` and `term.write`, which handle history, hints and
---interrupts on top of these.
---@class TtyStream
local ttyStream = {}

---Reads a line from the keyboard.
---@return string|nil
function ttyStream.read() end

---Writes text at the cursor, wrapping and scrolling as needed.
---@param value string
function ttyStream:write(value) end

---Scrolls the window by the given number of lines.
---@param lines integer # Positive scrolls down, negative scrolls up.
---@return integer # How many lines were actually scrolled.
function ttyStream.scroll(lines) end
