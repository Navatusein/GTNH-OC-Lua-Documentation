---@meta _

---@class tps_card: BaseComponent
---@field type "tps_card"
local tps_card = {}

---Returns a table mapping dimension IDs to their corresponding names.
---@return table<number, string> dimensions # Table where keys are dimension IDs and values are their names.
function tps_card.getAllDims() end

---Converts tick time (in milliseconds) into TPS (ticks per second).
---If the TPS exceeds 20, it will be capped at 20.
---@param time number # Tick time in milliseconds.
---@return number tps # The converted TPS value.
function tps_card.convertTickTimeIntoTps(time) end

---Returns the overall number of entities currently loaded in memory across all dimensions.
---@return number totalEntities # The total count of loaded entities.
function tps_card.getOverallEntitiesLoaded() end

---Returns a table mapping entity class names to the count of entities in the specified dimension.
---@param dimension number # The ID of the dimension.
---@return table<string, number> entitiesCount # Table where keys are entity class names and values are their counts.
function tps_card.getEntitiesListForDim(dimension) end

---Returns a table mapping Tile Entity class names to the count of Tile Entities in the specified dimension.
---@param dimension number # The ID of the dimension.
---@return table<string, number> tileEntitiesCount # Table where keys are Tile Entity class names and values are their counts.
function tps_card.getTileEntitiesListForDim(dimension) end

---Returns the overall number of Tile Entities currently loaded in memory across all dimensions.
---@return number totalTileEntities # The total count of loaded Tile Entities.
function tps_card.getOverallTileEntitiesLoaded() end

---Returns a table mapping dimension IDs to the tick time (in milliseconds) taken by each dimension.
---@return table<number, number> tickTimes # Table where keys are dimension IDs and values are their tick times in milliseconds.
function tps_card.getAllTickTimes() end

---Returns the tick time taken by the specified dimension in milliseconds.
---@param dimension number # The ID of the dimension.
---@return number tickTimeMs # The tick time for the specified dimension in milliseconds.
function tps_card.getTickTimeInDim(dimension) end

---Returns a table of coordinates for all entities matching the provided class name in the specified dimension.
---Each coordinate is given as a table in the form `{x, y, z}`.
---@param className string # The fully qualified class name of the entity.
---@param dimension number # The ID of the dimension.
---@return table<number, table> coordinates # Table where keys are indices and values are `{x, y, z}` coordinate tables.
function tps_card.getCoordinatesForEntityClassInDim(className, dimension) end

---Returns the overall tick time of the server in milliseconds.
---@return number overallTickTimeMs # The overall tick time in milliseconds.
function tps_card.getOverallTickTime() end

---Returns the number of chunks loaded in the specified dimension.
---@param dimension number # The ID of the dimension.
---@return number chunksLoaded # The number of loaded chunks in the specified dimension.
function tps_card.getChunksLoadedForDim(dimension) end

---Returns the overall number of chunks currently loaded in memory across all dimensions.
---@return number totalChunks # The total count of loaded chunks.
function tps_card.getOverallChunksLoaded() end

---Returns the name corresponding to the specified dimension.
---@param dimension number # The ID of the dimension.
---@return string dimensionName # The name of the specified dimension.
function tps_card.getNameForDim(dimension) end

---Returns the total number of dimensions currently loaded.
---@return number totalDimensions # The count of loaded dimensions.
function tps_card.getOverallDimsLoaded() end

return tps_card