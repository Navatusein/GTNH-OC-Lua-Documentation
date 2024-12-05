---@meta _

---@class IThroughVisibility: IAttribute
local IThroughVisibility = {}

---Sets a widget to be visible though blocks.
---@param status boolean # Set to `True` to allow this widget to be visible though blocks.
function IThroughVisibility.setVisibleThroughObjects(status) end

---Checks if an object should be visible though blocks.
---@return boolean # `True` if the object is set to be visible though blocks.
function IThroughVisibility.isVisibleThroughObjects() end