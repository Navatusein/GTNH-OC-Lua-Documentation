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

return tty
