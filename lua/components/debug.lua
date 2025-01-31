---@meta _

---@class debug: BaseComponent
---@field type "debug"
local debug = {}

---Changes the network energy buffer by the specified delta.
---@param value number # The amount of energy to add or remove.
---@return number # The new energy buffer level.
function debug.changeBuffer(value) end

---Connects the debug card to an OpenComputers-compatible block at the specified coordinates.
---@param x number # X-coordinate of the block.
---@param y number # Y-coordinate of the block.
---@param z number # Z-coordinate of the block.
---@return boolean # True if connection was successful.
function debug.connectToBlock(x, y, z) end

---Gets the entity object of a player by name.
---@param name string # The name of the player.
---@return Player # A Player object representing the player.
function debug.getPlayer(name) end

---Gets a list of currently logged-in players.
---@return table # A table of player names.
function debug.getPlayers() end

---Gets the world object for the specified dimension ID or the container’s dimension.
---@param id number|nil # The dimension ID. Defaults to the container’s dimension.
---@return World # The world object.
function debug.getWorld(id) end

---Gets a list of all world IDs, loaded and unloaded.
---@return table # A table of world IDs.
function debug.getWorlds() end

---Gets the scoreboard object for the world.
---@return Scoreboard # The scoreboard object.
function debug.getScoreboard() end

---Gets the X coordinate of the debug card's container.
---@return number # The X coordinate.
function debug.getX() end

---Gets the Y coordinate of the debug card's container.
---@return number # The Y coordinate.
function debug.getY() end

---Gets the Z coordinate of the debug card's container.
---@return number # The Z coordinate.
function debug.getZ() end

---Checks if a mod or API is loaded.
---@param name string # The mod or API name.
---@return boolean # True if the mod/API is loaded.
function debug.isModLoaded(name) end

---Runs an arbitrary command using a fake player.
---@param command string # The command to execute.
---@return number, string # 1 if the command was successful, or 0 with an error message.
function debug.runCommand(command) end

---Sends data to another debug card.
---@param address string # The target debug card’s address.
---@vararg any # The data to send.
function debug.sendToDebugCard(address, ...) end

---Sends text to a player's clipboard (if possible).
---@param player string # The player’s name.
---@param text string # The text to copy.
function debug.sendToClipboard(player, text) end

---Scans the contents at a specific world location.
---@param x number # X-coordinate.
---@param y number # Y-coordinate.
---@param z number # Z-coordinate.
---@param worldId number|nil # The world ID. Defaults to the host world.
---@return boolean, string, table # Whether the space is occupied, its label, and entity/block data.
function debug.scanContentsAt(x, y, z, worldId) end

---Test method for user-data and general value conversion.
---@return any # Returns test data.
function debug.test() end
