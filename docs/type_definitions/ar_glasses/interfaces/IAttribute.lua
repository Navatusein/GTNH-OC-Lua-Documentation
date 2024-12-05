---@meta _

---@class IAttribute
local IAttribute = {}

---Gets the unique identifier of the widget.
---@return integer # The unique identifier of the widget.
function IAttribute.getID() end

---Sets the visibility of the widget.
---@param visible boolean # The new visibility status of the widget.
function IAttribute.setVisible(visible) end

---Checks if the widget is being rendered.
---@return boolean # `true` if the widget is being rendered.
function IAttribute.isVisible() end