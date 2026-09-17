---@meta "vt100"

---The ANSI escape sequence interpreter behind the terminal.
---
---This is why writing `"\27[31mred\27[m"` prints in colour rather than showing the
---escape characters: `tty` hands its output buffer to this library, which recognises
---the sequence and acts on the window. A script never has to call it — it just writes
---the escapes and lets the terminal do the rest.
---
---Sequences it understands, all starting with `\27`:
---* `[<n>;<n>m` colour and attributes, where 30-37 set the foreground, 40-47 the
---  background, 0 resets, 7 swaps them
---* `[<n>A` `[<n>B` `[<n>C` `[<n>D` move the cursor up, down, right, left
---* `[<y>;<x>H` and `[<y>;<x>f` place the cursor, `[H` sends it home
---* `[<n>K` clears part of the line, `[<n>J` part of the screen
---* `[6n` reports the cursor position back as a `key_down` sequence
---* `[s` `[u` `7` `8` save and restore cursor and attributes
---* `D` `E` `M` scroll
---* `[?7h` `[?7l` turn line wrapping on and off
---@class Vt100Library
---@field rules table # The recognised sequences, keyed by a list of patterns.
local vt100 = {}

---Consumes an escape sequence from the start of a window's output buffer and applies it.
---
---Called by `tty` while flushing output. It returns the text that should be printed in
---place of the sequence, which is empty for everything but an unrecognised sequence.
---@param window TtyWindow # The window to act on, whose `output_buffer` is read and trimmed.
---@return string # What remains to be printed.
function vt100.parse(window) end

return vt100
