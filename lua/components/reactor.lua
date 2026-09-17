---@meta _

---The IC2 nuclear reactor block itself.
---
---Next to the reactor API it also answers as an IC2 energy source, which a reactor
---chamber does not.
---@class reactor: BaseReactor
---@field type "reactor"
local reactor = {}

---Get the energy the reactor is currently offering to the IC2 energy net, in EU/t.
---
---This comes from the IC2 energy source driver, not from the reactor API, and the mod
---provides no description for it.
---@return number
function reactor.getOfferedEnergy() end
