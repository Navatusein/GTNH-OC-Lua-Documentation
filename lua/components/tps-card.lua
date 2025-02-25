---@meta _

---@class tps_card: BaseComponent
---@field type 'tps_card'
local tpsCard = {}

---Returns the tick time taken by the specified dimension in milliseconds.
---If no dimension is provided, the current world dimension is used.
---@param dimension number The id of the dimension.
---@return number tickTimeMs
function tpsCard.getTickTimeInDim(dimension) end

---Returns the overall tick time of the server in milliseconds.
---@return number overallTickTimeMs
function tpsCard.getOverallTickTime() end

---Returns a table mapping dimension ids to their corresponding names.
---@return table<number, string>
function tpsCard.getAllDims() end

---Returns a table mapping dimension ids to the tick time (in milliseconds) for that dimension.
---@return table<number, number>
function tpsCard.getAllTickTimes() end

---Returns the name corresponding to the specified dimension.
---@param dimension number The id of the dimension.
---@return string dimensionName
function tpsCard.getNameForDim(dimension) end

---Converts the provided tick time (in milliseconds) into the corresponding TPS.
---If the TPS exceeds 20, it will be capped at 20.
---@param time number Tick time in milliseconds.
---@return number tps
function tpsCard.convertTickTimeIntoTps(time) end

---Returns the overall number of Tile Entities loaded across all dimensions.
---@return number totalTileEntities
function tpsCard.getOverallTileEntitiesLoaded() end

---Returns the overall number of chunks loaded across all dimensions.
---@return number totalChunks
function tpsCard.getOverallChunksLoaded() end

---Returns the overall number of entities loaded across all dimensions.
---@return number totalEntities
function tpsCard.getOverallEntitiesLoaded() end

---Returns the total number of dimensions loaded.
---@return number totalDimensions
function tpsCard.getOverallDimsLoaded() end

---Returns a table mapping entity class names to the count of entities in the specified dimension.
---@param dimension number The id of the dimension.
---@return table<string, number> entitiesCount
function tpsCard.getEntitiesListForDim(dimension) end

---Returns a table mapping Tile Entity class names to the count of Tile Entities in the specified dimension.
---@param dimension number The id of the dimension.
---@return table<string, number> tileEntitiesCount
function tpsCard.getTileEntitiesListForDim(dimension) end

---Returns the number of chunks loaded in the specified dimension.
---@param dimension number The id of the dimension.
---@return number chunksLoaded
function tpsCard.getChunksLoadedForDim(dimension) end

---Returns a table of coordinates for all entities matching the provided class name in the specified dimension.
---Each coordinate is given as a table in the form {x, y, z}.
---@param className string The fully qualified class name of the entity.
---@param dimension number The id of the dimension.
---@return table<number, table> coordinates
function tpsCard.getCoordinatesForEntityClassInDim(className, dimension) end

return tpsCard
