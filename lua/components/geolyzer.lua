---@meta _

---@class geolyzer: BaseComponent
---@field type "geolyzer"
local geolyzer = {}

---Analyzes the density of blocks in a specified area relative to the geolyzer.
---@param x number # The relative X coordinate of the starting block.
---@param z number # The relative Z coordinate of the starting block.
---@param y number|nil # The relative Y coordinate of the starting block. Defaults to 0.
---@param w number|nil # The width (X direction) of the area. Defaults to 1.
---@param d number|nil # The depth (Z direction) of the area. Defaults to 1.
---@param h number|nil # The height (Y direction) of the area. Defaults to 1.
---@param ignoreReplaceable boolean|table|nil # Whether to ignore replaceable blocks or additional options. Defaults to false.
---@return table # A flat table of density values for the scanned area.
function geolyzer.scan(x, z, y, w, d, h, ignoreReplaceable) end

---Returns information about a directly adjacent block.
---@param side number # The side to analyze.
---@param options table|nil # Additional options for analysis. Defaults to nil.
---@return table # A table containing information about the block (e.g., `id`, `metadata`, `hardness`).
function geolyzer.analyze(side, options) end

---Stores an item stack representation of the block on a specified side in a database component.
---@param side number # The side to analyze.
---@param dbAddress string # The address of the database component.
---@param dbSlot number # The slot in the database to store the information.
---@return boolean # True if successful, false otherwise.
function geolyzer.store(side, dbAddress, dbSlot) end

---Detects the contents of the block on the specified side.
---@param side number # The side to analyze.
---@return boolean # True if the block is not passable, false otherwise.
---@return string # A description of the block (e.g., "solid", "liquid", "air").
function geolyzer.detect(side) end

---Checks if there is a clear line of sight to the sky directly above.
---@return boolean # True if the sky is visible, false otherwise.
function geolyzer.canSeeSky() end

---Returns whether the sun is currently visible directly above.
---@return boolean # True if the sun is visible, false otherwise.
function geolyzer.isSunVisible() end

---Returns information about GregTech underground fluids.
---@return table # A table describing underground fluids.
function geolyzer.scanUndergroundFluids() end