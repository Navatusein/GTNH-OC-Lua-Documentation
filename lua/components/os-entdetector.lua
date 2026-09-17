---@meta _

---The Entity Detector from OpenSecurity.
---@class os_entdetector: BaseComponent
---@field type "os_entdetector"
local osEntdetector = {}

---The mod gives no description for this method.
function osEntdetector.getLoc() end

---The mod gives no description for this method.
function osEntdetector.greet() end

---pushes a signal "entityDetect" for each entity in range (excluding players), optional set range.
---@param range? integer
---@return table
function osEntdetector.scanEntities(range) end

---pushes a signal "entityDetect" for each player in range, optional set range.
---@param range? integer
---@return table
function osEntdetector.scanPlayers(range) end
