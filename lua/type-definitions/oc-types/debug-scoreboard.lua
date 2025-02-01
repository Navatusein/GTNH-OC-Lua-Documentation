---@meta _

---@class Scoreboard
local Scoreboard = {}

---Creates a new objective for the scoreboard.
---@param objectiveName string # The name of the objective.
---@param objectiveCriteria string # The criteria for the objective (e.g., "dummy", "health", "deathCount").
function Scoreboard.addObjective(objectiveName, objectiveCriteria) end

---Removes an objective from the scoreboard.
---@param objectiveName string # The name of the objective to remove.
function Scoreboard.removeObjective(objectiveName) end

---Increases a player's score for a certain objective.
---@param playerName string # The name of the player.
---@param objectiveName string # The name of the objective.
---@param score number # The amount to increase the score by.
function Scoreboard.increasePlayerScore(playerName, objectiveName, score) end

---Decreases a player's score for a certain objective.
---@param playerName string # The name of the player.
---@param objectiveName string # The name of the objective.
---@param score number # The amount to decrease the score by.
function Scoreboard.decreasePlayerScore(playerName, objectiveName, score) end

---Gets a player's score for a certain objective.
---@param playerName string # The name of the player.
---@param objectiveName string # The name of the objective.
---@return number # The player's current score for the objective.
function Scoreboard.getPlayerScore(playerName, objectiveName) end

---Sets a player's score for a certain objective.
---@param playerName string # The name of the player.
---@param objectiveName string # The name of the objective.
---@param score number # The new score value.
function Scoreboard.setPlayerScore(playerName, objectiveName, score) end

---Adds a player to a team.
---@param playerName string # The name of the player.
---@param teamName string # The name of the team.
---@return boolean # True if the player was added successfully.
function Scoreboard.addPlayerToTeam(playerName, teamName) end

---Removes a player from a specific team.
---@param playerName string # The name of the player.
---@param teamName string # The name of the team.
function Scoreboard.removePlayerFromTeam(playerName, teamName) end

---Removes a player from all teams.
---@param playerName string # The name of the player.
function Scoreboard.removePlayerFromTeams(playerName) end

---Adds a team to the scoreboard.
---@param teamName string # The name of the team.
function Scoreboard.addTeam(teamName) end

---Removes a team from the scoreboard.
---@param teamName string # The name of the team.
function Scoreboard.removeTeam(teamName) end
