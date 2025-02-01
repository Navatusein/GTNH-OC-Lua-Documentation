---@meta _

---@class Player
local Player = {}

---Gets the world object the player is in.
---@return World # The player's world.
function Player.getWorld() end

---Gets the player's current position.
---@return number, number, number # X, Y, and Z coordinates of the player.
function Player.getPosition() end

---Sets the player's position.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
function Player.setPosition(x, y, z) end

---Gets the player's health.
---@return number # The player's current health.
function Player.getHealth() end

---Sets the player's health.
---@param health number # The new health value.
function Player.setHealth(health) end

---Gets the player's maximum health.
---@return number # The maximum health of the player.
function Player.getMaxHealth() end

---Gets the player's game mode.
---@return string # The game mode (e.g., "survival", "creative", "adventure").
function Player.getGameType() end

---Sets the player's game mode.
---@param gametype string # The new game mode (e.g., "survival", "creative", "adventure").
function Player.setGameType(gametype) end

---Gets the player's experience level.
---@return number # The current experience level.
function Player.getLevel() end

---Gets the player's total experience points.
---@return number # The total experience points.
function Player.getExperienceTotal() end

---Adds experience levels to the player.
---@param level number # The number of levels to add.
function Player.addExperienceLevel(level) end

---Removes experience levels from the player.
---@param level number # The number of levels to remove.
function Player.removeExperienceLevel(level) end

---Adds an item stack to the player's inventory.
---@param id string # The item ID.
---@param amount number # The number of items to add.
---@param meta number # The item metadata value.
---@param nbt string|nil # The item's NBT data in JSON format. Defaults to nil.
---@return number # The number of items successfully added.
function Player.insertItem(id, amount, meta, nbt) end

---Clears the player's inventory.
function Player.clearInventory() end
