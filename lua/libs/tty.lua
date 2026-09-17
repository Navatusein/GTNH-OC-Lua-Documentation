---@meta "tty"

---The terminal device behind `term`.
---
---`term` is built on this library and inherits from it, so `term.clear`, `term.gpu`,
---`term.getViewport` and the rest of the names below are reachable through either. Use
---`tty` when you want the device itself, and `term` when you want the higher level
---reading and writing on top of it.
---@class TtyLibrary
---@field window TtyWindow # The window this terminal draws into.
---@field stream TtyStream # The stream `io.write` and `io.read` go through.
local tty = {}

---The area the terminal draws into, in characters, and where the cursor is in it.
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

---@class TtyStream
local ttyStream = {}

---Returns whether a graphics card and a screen are both bound and available.
---@return boolean
function tty.isAvailable() end

---Returns the graphics card bound to the terminal.
---@return gpu|nil
function tty.gpu() end

---Returns the address of the screen the terminal draws on.
---@return string|nil
function tty.screen() end

---Returns the address of the keyboard the terminal reads from.
---@return string|nil
function tty.keyboard() end

---Returns the geometry of the window: its size, its offset on the screen, and the
---cursor position inside it.
---@return integer width
---@return integer height
---@return integer dx # The x offset of the window on the screen.
---@return integer dy # The y offset of the window on the screen.
---@return integer x # The cursor column.
---@return integer y # The cursor row.
function tty.getViewport() end

---Sets the geometry of the window.
---@param width integer
---@param height integer
---@param dx? integer # The x offset on the screen. Defaults to 0.
---@param dy? integer # The y offset on the screen. Defaults to 0.
---@param x? integer # The cursor column. Defaults to 1.
---@param y? integer # The cursor row. Defaults to 1.
function tty.setViewport(width, height, dx, dy, x, y) end

---Returns the cursor position inside the window.
---@return integer x
---@return integer y
function tty.getCursor() end

---Moves the cursor inside the window.
---@param x integer
---@param y integer
function tty.setCursor(x, y) end

---Scrolls everything off the window and puts the cursor back in the top left corner.
function tty.clear() end

---Binds a graphics card to the terminal, and with it the screen that card is bound to.
---@param gpu gpu # A graphics card proxy.
function tty.bind(gpu) end

---Scrolls the window by the given number of lines.
---
---**Prefer `term.write`** — this is the low level operation it is built on.
---@param lines integer # Positive scrolls down, negative scrolls up.
---@return integer # How many lines were actually scrolled.
function ttyStream.scroll(lines) end

---Reads a line from the keyboard.
---
---**Prefer `io.read` or `term.read`** — they handle history, hints and interrupts.
---@return string|nil
function ttyStream.read() end

---Writes text at the cursor, wrapping and scrolling as needed.
---
---**Prefer `io.write` or `term.write`.**
---@param value string
function ttyStream:write(value) end

return tty
