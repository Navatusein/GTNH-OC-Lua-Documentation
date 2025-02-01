---@meta _

---@class World
local World = {}

---Gets the metadata of a block at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@return number # The metadata value of the block.
function World.getMetadata(x, y, z) end

---Gets the block ID at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@return number # The numeric block ID.
function World.getBlockId(x, y, z) end

---Gets the block state at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@param actualState boolean|nil # Whether to get the actual state with rendering properties. Defaults to false.
---@return table # A table describing the block state.
function World.getBlockState(x, y, z, actualState) end

---Gets the numeric ID of the current dimension.
---@return number # The dimension ID of the world.
function World.getDimensionId() end

---Gets the name of the current dimension.
---@return string # The dimension name.
function World.getDimensionName() end

---Checks whether a block at the specified coordinates is loaded.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@return boolean # True if the block is loaded, false otherwise.
function World.isLoaded(x, y, z) end

---Gets the current world time.
---@return number # The time in ticks.
function World.getTime() end

---Sets the world time.
---@param value number # The new time in ticks.
function World.setTime(value) end

---Gets the seed of the world.
---@return number # The world seed.
function World.getSeed() end

---Checks whether it is currently raining.
---@return boolean # True if it is raining, false otherwise.
function World.isRaining() end

---Sets whether it is currently raining.
---@param value boolean # True to start raining, false to stop.
function World.setRaining(value) end

---Checks whether it is currently thundering.
---@return boolean # True if it is thundering, false otherwise.
function World.isThundering() end

---Sets whether it is currently thundering.
---@param value boolean # True to start thunder, false to stop.
function World.setThundering(value) end

---Gets the light level at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@return number # The light level (0-15).
function World.getLightValue(x, y, z) end

---Gets the light opacity of a block at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@return number # The light opacity value (0-15).
function World.getLightOpacity(x, y, z) end

---Checks if the block at the specified coordinates is exposed to the sky.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@return boolean # True if there is a direct line of sight to the sky.
function World.canSeeSky(x, y, z) end

---Checks if the block at the specified coordinates has a tile entity.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@return boolean # True if the block has a tile entity.
function World.hasTileEntity(x, y, z) end

---Gets the NBT data of the tile entity at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@return table # A table containing the tile entity's NBT data.
function World.getTileNBT(x, y, z) end

---Sets the NBT data of the tile entity at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@param nbt table # The NBT data to apply.
---@return boolean # True if the operation was successful.
function World.setTileNBT(x, y, z, nbt) end

---Sets a block at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@param id number|string # The block ID.
---@param meta number # The metadata value.
---@return number # The number of blocks changed.
function World.setBlock(x, y, z, id, meta) end

---Sets multiple blocks in a defined cuboid area.
---@param x1 number # First corner X-coordinate.
---@param y1 number # First corner Y-coordinate.
---@param z1 number # First corner Z-coordinate.
---@param x2 number # Second corner X-coordinate.
---@param y2 number # Second corner Y-coordinate.
---@param z2 number # Second corner Z-coordinate.
---@param id number|string # The block ID.
---@param meta number # The metadata value.
---@return number # The number of blocks changed.
function World.setBlocks(x1, y1, z1, x2, y2, z2, id, meta) end

---Removes some fluid from a tank at the specified location.
---@param amount number # The amount of fluid to remove.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@param side number # The side of the block.
---@return boolean # True if the operation was successful.
function World.removeFluid(amount, x, y, z, side) end

---Inserts fluid into a tank at the specified location.
---@param id string # The fluid ID.
---@param amount number # The amount of fluid to insert.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@param side number # The side of the block.
---@return boolean # True if the operation was successful.
function World.insertFluid(id, amount, x, y, z, side) end

---Gets the current world spawn point.
---@return number, number, number # X, Y, and Z coordinates of the spawn point.
function World.getSpawnPoint() end

---Sets the world spawn point.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
function World.setSpawnPoint(x, y, z) end

---Plays a sound at the specified coordinates.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@param sound string # The sound name.
---@param range number # The range at which the sound can be heard.
function World.playSoundAt(x, y, z, sound, range) end