---@meta _

---The position of an ME interface, as the interface terminal reports and accepts it.
---@class MEInterfaceLocation
---@field x number # The x coordinate.
---@field y number # The y coordinate.
---@field z number # The z coordinate.
---@field dimId number? # The dimension id. Defaults to the dimension of the terminal.

---One end of a pattern transfer: which interface, and which pattern slot in it.
---@class MEInterfaceSlot
---@field location MEInterfaceLocation # Where the interface is.
---@field slot number? # The pattern slot. Required for the source, optional for the target.

---A single transfer in a batch sent to the interface terminal.
---@class MEInterfaceTransfer
---@field source MEInterfaceSlot # Where the pattern is taken from.
---@field target MEInterfaceSlot # Where the pattern is put.
