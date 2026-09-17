---@meta _

---Essentia transport, the `IEssentiaTransport` side of a Thaumcraft block.
---
---A block that only stores essentia has the aspect methods alone; one that also moves
---it has these as well. No driver in the cloned mod sources declares them, so their
---descriptions come from the dumps.
---@class BaseEssentiaTransport: BaseAspectContainer
local baseEssentiaTransport = {}

---can pipe input from direction
---@param direction number
---@return boolean
function baseEssentiaTransport.canInputFrom(direction) end

---can pipe output to direction
---@param direction number
---@return boolean
function baseEssentiaTransport.canOutputTo(direction) end

---returnd amount of essentia
---@param direction number
---@return number
function baseEssentiaTransport.getEssentiaAmount(direction) end

---returns which essentia in pipe
---@param direction number
---@return string
function baseEssentiaTransport.getEssentiaType(direction) end

---returns minimum suction
---@return number
function baseEssentiaTransport.getMinimumSuction() end

---returnd amount of suction
---@param direction number
---@return number
function baseEssentiaTransport.getSuctionAmount(direction) end

---returns which aspect suction
---@param direction number
---@return string
function baseEssentiaTransport.getSuctionType(direction) end

---returns is the pipe connectable from this direction
---@param direction number
---@return boolean
function baseEssentiaTransport.isConnectable(direction) end
