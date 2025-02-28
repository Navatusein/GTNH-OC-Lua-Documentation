---@meta _

---@class info_panel: BaseComponent
---@field type "info_panel"
local info_panel = {}

---Gets the thickness of the panel.
---@return number thickness # The current thickness of the panel.
function info_panel.getThickness() end

---Sets the thickness of the panel.
---Only values between 1 and 16 are valid, otherwise, nothing will happen.
---@param value number # The thickness value to set (1-16).
function info_panel.setThickness(value) end

---Gets the horizontal rotation of the panel.
---@return number rotation # The current horizontal rotation of the panel.
function info_panel.getRotationHorizonally() end

---Sets the horizontal rotation of the panel.
---Only values between 1 and 16 are valid, otherwise, nothing will happen.
---@param value number # The horizontal rotation value to set (1-16).
function info_panel.rotateHorizonally(value) end

---Gets the vertical rotation of the panel.
---@return number rotation # The current vertical rotation of the panel.
function info_panel.getRotationVertically() end

---Sets the vertical rotation of the panel.
---Only values between 1 and 16 are valid, otherwise, nothing will happen.
---@param value number # The vertical rotation value to set (1-16).
function info_panel.rotateVertically(value) end

---Gets the background color of the panel.
---@return number color # The current background color in RGB format.
function info_panel.getBackgroundColor() end

---Gets the text color of the panel.
---@return number color # The current text color in RGB format.
function info_panel.getTextColor() end

---Checks if the color upgrade is installed in the panel.
---@return boolean hasUpgrade # True if the color upgrade is installed, false otherwise.
function info_panel.hasColorUpgrade() end

---Checks if the web upgrade is installed in the panel.
---@return boolean hasUpgrade # True if the web upgrade is installed, false otherwise.
function info_panel.hasWebUpgrade() end

return info_panel
