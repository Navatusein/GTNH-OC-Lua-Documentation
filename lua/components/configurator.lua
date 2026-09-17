---@meta _

---The Configurator Upgrade, which edits EnderIO conduits.
---@class configurator: BaseComponent
---@field type "configurator"
local configurator = {}

---Get conduit configuration at the specified conduitDirection
---@param side number
---@param conduitDirection number
---@return table
function configurator.getConduitConfiguration(side, conduitDirection) end

---Replace item conduit input or output filter with the filter in selected slot
---
---**Robot only** - the adapter side of the upgrade does not expose it.
---@param side number
---@param conduitDirection number
---@param input boolean
---@return boolean
function configurator.replaceConduitFilter(side, conduitDirection, input) end

---Set Color for Ender liquid conduit input or output.
---@param side number
---@param conduitDirection number
---@param isInput boolean
---@param color string
---@return boolean
function configurator.setEnderLiquidConduitColor(side, conduitDirection, isInput, color) end

---Set Ender liquid conduit filter
---@param side number
---@param conduitDirection number
---@param fluid string
---@param blacklist boolean
---@param isInput? boolean
---@param filterIndex? number
---@return boolean
function configurator.setEnderLiquidConduitFilter(side, conduitDirection, fluid, blacklist, isInput, filterIndex) end

---Set item conduit input/output color
---@param side number
---@param conduitDirection number
---@param isInput boolean
---@param color string
---@return boolean
function configurator.setItemConduitColor(side, conduitDirection, isInput, color) end

---Set item conduit connection mode (IN_OUT,INPUT,OUTPUT,DISABLED,NOT_SET)
---@param side number
---@param conduitDirection number
---@param mode string
---@return boolean
function configurator.setItemConduitConnectionMode(side, conduitDirection, mode) end

---Set item conduit extraction redstone signal color
---@param side number
---@param conduitDirection number
---@param color string
---@return boolean
function configurator.setItemConduitExtractionRedstoneColor(side, conduitDirection, color) end

---Set item conduit extraction redstone signal mode (IGNORE,ON,OFF,NEVER).
---@param side number
---@param conduitDirection number
---@param mode string
---@return boolean
function configurator.setItemConduitExtractionRedstoneMode(side, conduitDirection, mode) end

---Set item from database slot to conduit input or output filter
---@param side number
---@param conduitDirection number
---@param database string
---@param dbSlot number
---@param filterIndex number
---@param isInput boolean
---@return boolean
function configurator.setItemConduitFilter(side, conduitDirection, database, dbSlot, filterIndex, isInput) end

---Set item conduit output priority
---@param side number
---@param conduitDirection number
---@param priority number
---@return boolean
function configurator.setItemConduitOutputPriority(side, conduitDirection, priority) end

---Set liquid conduit connection mode (IN_OUT,INPUT,OUTPUT,DISABLED,NOT_SET)
---@param side number
---@param conduitDirection number
---@param mode string
---@return boolean
function configurator.setLiquidConduitConnectionMode(side, conduitDirection, mode) end

---Set fluid conduit extraction redstone signal color
---@param side number
---@param conduitDirection number
---@param color string
---@return boolean
function configurator.setLiquidConduitExtractionRedstoneColor(side, conduitDirection, color) end

---Set fluid conduit extraction redstone signal mode at side facing conduitDirection. mode:(IGNORE,ON,OFF,NEVER)
---@param side number
---@param conduitDirection number
---@param mode string
---@return boolean
function configurator.setLiquidConduitExtractionRedstoneMode(side, conduitDirection, mode) end

---Set redstone conduit signal color at side facing conduitDirection
---@param side number
---@param conduitDirection number
---@param color string
---@return boolean
function configurator.setRedstoneConduitSignalColor(side, conduitDirection, color) end

---Set redstone conduit signal strength. (true = strong signal, false = weak)
---@param side number
---@param conduitDirection number
---@param strength boolean
---@return boolean
function configurator.setRedstoneConduitSignalStrength(side, conduitDirection, strength) end
