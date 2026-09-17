---@meta "computer"

---@class ComputerLibrary
local computer = {}

---Gets the component address of this computer.
---@return string # The computer's component address.
function computer.address() end

---Gets the component address of the temporary file system, if any.
---@return string|nil # The temporary file system's address, or nil if none.
function computer.tmpAddress() end

---Gets the amount of free memory in bytes.
---@return number # Free memory in bytes.
function computer.freeMemory() end

---Gets the total amount of memory installed in bytes.
---@return number # Total memory in bytes.
function computer.totalMemory() end

---Gets the amount of available energy in the network.
---@return number # Current energy level.
function computer.energy() end

---Gets the maximum amount of energy that can be stored in the network.
---@return number # Maximum energy capacity.
function computer.maxEnergy() end

---Gets the computer's uptime in real-world seconds.
---@return number # Time in seconds since the computer was started.
function computer.uptime() end

---Shuts down the computer, optionally rebooting it.
---@param reboot boolean|nil # True to reboot after shutting down, false or nil to just shut down.
function computer.shutdown(reboot) end

---Gets the address of the filesystem component used for booting.
---@return string|nil # The boot filesystem's address, or nil if not set.
function computer.getBootAddress() end

---Sets the address of the filesystem component used for booting.
---@param address string|nil # The address to set, or nil to clear.
function computer.setBootAddress(address) end

---Gets the current runlevel of the computer.
---@return string|number # The current runlevel (e.g., "S", "1").
function computer.runlevel() end

---Gets a list of all registered users on this computer.
---@return string, ... # A tuple of usernames.
function computer.users() end

---Registers a new user on this computer.
---@param name string # The username to register.
---@return boolean|nil, string|nil # True if successful, or nil and an error message if not.
function computer.addUser(name) end

---Unregisters a user from this computer.
---@param name string # The username to remove.
---@return boolean # True if successful, false if the user was not registered.
function computer.removeUser(name) end

---Pushes a new signal into the event queue.
---@param name string # The signal name.
---@vararg any # Additional arguments for the signal.
function computer.pushSignal(name, ...) end

---Pulls a signal from the event queue.
---@param timeout number|nil # Maximum time to wait in seconds, or nil to wait indefinitely.
---@return string|nil, ... # The signal name and its arguments, or nil if timed out.
function computer.pullSignal(timeout) end

---Makes the computer emit a beep sound.
---@overload fun(frequency: number, duration: number)
---@overload fun(pattern: string)
---@param frequency string|number|nil # Frequency in Hz (20-2000) or a pattern of dots and dashes.
---@param duration number|nil # Duration in seconds, if frequency is a number.
function computer.beep(frequency, duration) end

---Gets information about installed devices.
---@return table # A table of device information.
function computer.getDeviceInfo() end

---Returns whether this machine is a robot.
---@return boolean
function computer.isRobot() end

---Returns the real world time as a Unix timestamp, in seconds.
---
---Unlike `computer.uptime` this is the clock of the machine running the server, not
---in-game time and not time since the computer started.
---@return number
function computer.realTime() end

---Returns a map of program name to the label of the disk it lives on, for the programs
---the machine knows about.
---@return table<string, string>
function computer.getProgramLocations() end

---Returns the list of architectures the CPU of this machine supports.
---@return string[]
function computer.getArchitectures() end

---Returns the architecture the machine is currently running.
---@return string
function computer.getArchitecture() end

---Switches the machine to another architecture, which reboots it.
---@param architecture string # One of the names `getArchitectures` returns.
---@return boolean|nil # True on success, or `nil` and the reason.
---@return string|nil
function computer.setArchitecture(architecture) end

return computer
