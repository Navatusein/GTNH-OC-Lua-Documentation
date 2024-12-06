---@meta _

---@class ILookable: IAttribute
local ILookable = {}

---Enables or disables the ability to hide the widget unless the player looks at a block (default state set to false).
---@param enable integer # Set to `true` to enable the looking at feature.
function ILookable.setLookingAt(enable) end

---Sets the location of the block that must be looked at in order for this widget to appear.
---You must also run `setLookingAt(true)` if you want this feature to work.
---@param x integer # The global x coordinate of the block.
---@param y integer # The global y coordinate of the block.
---@param z integer # The global z coordinate of the block.
function ILookable.setLookingAt(x,y,z) end

---Checks if the looking at feature is enabled on this widget.
---@return integer x # The global x coordinate of the block that must be looked at to see this widget.
---@return integer y # The global y coordinate of the block that must be looked at to see this widget.
---@return integer z # The global z coordinate of the block that must be looked at to see this widget.
---@return boolean status # `True` if the looking at feature is enabled.
function ILookable.getLookingAt() end