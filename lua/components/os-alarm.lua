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

---The mod gives no description for this method.
function osAlarm.greet() end

---Returns a table of Alarm Sounds
---@return table
function osAlarm.listSounds() end

---Plays sound at x y z
---@param x integer
---@param y integer
---@param z integer
---@param sound string
---@param range number
---@return string
function osAlarm.playSoundAt(x, y, z, sound, range) end

---Sets the alarm sound
---@param soundName string
---@return string
function osAlarm.setAlarm(soundName) end

---Sets the range in blocks of the alarm
---@param range integer
---@return string
function osAlarm.setRange(range) end
