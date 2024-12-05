---@meta _

---@class EssentiaStack
---@field amount integer # The amount of essentia available
---@field label string # The name of the essentia (seems to always be: [name] Super Critical Fluid)
---@field name string # The unlocalized name of the essentia
---@field hasTag boolean # True if it has an NBT tag.
---@field tag string? # An encoded version of the NBT tag (looks like the usual zlib encode for BNBT)