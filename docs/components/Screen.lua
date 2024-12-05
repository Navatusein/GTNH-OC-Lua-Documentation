---@meta _

---@class screen: BaseComponent
---@field type "screen"
local screen = {};

---Returns whether the screen is currently on.
---@return boolean
function screen.isOn() end

---Turns on the screen.
---@return boolean wasOff # True if it was off.
function screen.turnOn() end

---Turns off the screen.
---@return boolean wasOn # True if it was on.
function screen.turnOff() end

---The aspect ratio of the screen. For multi-block screens this is the number of blocks, horizontal and vertical.
---@return integer width # The width in blocks of the screen.
---@return integer height # The height in blocks of the screen.
function screen.getAspectRatio() end

---Returns a list of addresses for the keyboards attached to this screen.
---@return string[] keyboardAddresses # The address of the keyboards attached to this screen.
function screen.getKeyboards() end

---Set whether to use high-precision mode (sub-pixel mouse event position).
---
---Requires Screen (Tier 3).
---@param enabled boolean # Whether to enable or disable precise mode.
---@return boolean success # True if it changed.
function screen.setPrecise(enabled) end

--- Check whether high-precision mode is enabled (sub-pixel mouse event position).
---
---Requires Screen (Tier 3).
---@return boolean isPrecise # True if the mode changed.
function screen.isPrecise() end

--- Sets Inverted Touch mode (Sneak-activate opens GUI if set to true).
---@param enabled boolean # Whether to enable or disable inverted touch mode.
---@return boolean success # True if the mode changed.
function screen.setTouchModeInverted(enabled) end

---Check to see if Inverted Touch mode is enabled (Sneak-activate opens GUI is set to true).
---@return boolean isInverted # True if inverted touch mode is enabled.
function screen.isTouchModeInverted() end