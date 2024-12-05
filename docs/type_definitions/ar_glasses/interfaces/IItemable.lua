---@meta _

---@class IItemable: IAttribute
local IItemable = {}

---Sets the item displayed by the widget.
---@param dbAddress string # The address of a database containing the item.
---@param dbIndex integer # The index of the item within the database.
function IItemable.setItem(dbAddress, dbIndex) end