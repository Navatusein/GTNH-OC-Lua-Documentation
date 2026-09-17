---@meta _

---The computer case or the robot itself, seen as a component.
---
---Not to be confused with the `computer` library, which is what a program uses to
---control the machine it runs on. This component is how one machine controls another,
---for example a computer wired to a robot or to a second computer case.
---@class computer: BaseComponent
---@field type "computer"
local computer = {}

---Starts the computer.
---@return boolean # True if the state changed.
function computer.start() end

---Stops the computer.
---@return boolean # True if the state changed.
function computer.stop() end

---Returns whether the computer is running.
---@return boolean # True if the computer is running.
function computer.isRunning() end

---Plays a tone, useful to alert users via audible feedback.
---@param frequency? string|number # The frequency to play, or a pattern of dots and dashes.
---@param duration? number # How long to play the tone, in seconds.
function computer.beep(frequency, duration) end

---Collects information on all devices connected to this computer.
---@return table # A table of device information, keyed by component address.
function computer.getDeviceInfo() end

---Returns a map of program name to disk label for known programs.
---@return table<string, string>
function computer.getProgramLocations() end
