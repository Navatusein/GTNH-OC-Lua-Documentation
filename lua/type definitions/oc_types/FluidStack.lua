---@meta _

---@class FluidStack
---@field amount integer # The amount of mb available.
---@field hasTag boolean # True if it has an NBT tag.
---@field tag string? # An encoded version of the NBT tag (looks like the usual zlib encode for BNBT).
---@field label string # The localized name of the fluid.
---@field name string # The unlocalized name of the fluid.