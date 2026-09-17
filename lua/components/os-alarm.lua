---@meta _

---The Alarm from OpenSecurity.
---@class os_alarm: BaseComponent
---@field type "os_alarm"
local osAlarm = {}

---Activates the alarm
---@return string
function osAlarm.activate() end

---Deactivates the alarm
---@return string
function osAlarm.deactivate() end

---@field greet any # function

---Returns a table of Alarm Sounds
---@return table
function osAlarm.listSounds() end

---Plays sound at x y z
---@param int x
---@param int y
---@param int z
---@param string sound
---@param float range(1-10 recommended)
---@return string
function osAlarm.playSoundAt(int, int, int, string, float) end

---Sets the alarm sound
---@param soundName string
---@return string
function osAlarm.setAlarm(soundName) end

---Sets the range in blocks of the alarm
---@param range integer
---@return string
function osAlarm.setRange(range) end
