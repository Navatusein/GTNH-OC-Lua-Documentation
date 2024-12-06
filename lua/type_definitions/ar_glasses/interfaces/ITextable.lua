---@meta

---@class ITextable: IAttribute
local ITextable = {}

---Sets the text displayed by the widget.
---@param text string # The new text being displayed by the widget.
function ITextable.setText(text) end

---Gets the text being displayed by the widget.
function ITextable.getText() end