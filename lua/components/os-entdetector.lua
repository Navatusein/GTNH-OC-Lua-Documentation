---@meta _

---The Entity Detector from OpenSecurity.
---@class os_entdetector: BaseComponent
---@field type "os_entdetector"
local osEntdetector = {}

---@field getLoc any # function

---@field greet any # function

---pushes a signal "entityDetect" for each entity in range (excluding players), optional set range.
---@param optional int:range
---@return table
function osEntdetector.scanEntities(optional) end

---pushes a signal "entityDetect" for each player in range, optional set range.
---@param optional int:range
---@return table
function osEntdetector.scanPlayers(optional) end
