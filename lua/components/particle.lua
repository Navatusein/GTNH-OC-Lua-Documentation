---@meta _

---The Particle Card from Computronics.
---@class particle: BaseComponent
---@field type "particle"
local particle = {}

---function(name:string, xCoord:number, yCoord:number, zCoord:number [, xVelo:number, yVelo:number, zVelo:number]):boolean; Spawns a particle effect at the specified relative coordinates optionally with the specified velocity
---@param name string
---@param xCoord number
---@param yCoord number
---@param zCoord? number
---@param defaultVelo? number
---@return boolean
function particle.spawn(name, xCoord, yCoord, zCoord, defaultVelo) end
