---@meta "event"

---@class event
local event = {}

---Register a new event listener for a specific signal.
---@param event string # The name of the signal to listen to.
---@param callback function # The function to call when the signal is received.
---@return number # Return event id which can be canceled via event.cancel, if the event was successfully registered.
function event.listen(event, callback) end

---Unregister a previously registered event listener.
---@param event string # The name of the signal to unregister.
---@param callback function # The function that was used during registration.
---@return boolean # True if successfully unregistered, false if it was not registered.
function event.ignore(event, callback) end

---Start a new timer.
---@param interval number # Time in seconds between each invocation of the callback function.
---@param callback function # The function to call when the timer triggers.
---@param times number|nil # How many times the function should be called. Defaults to one. Use `math.huge` for infinite.
---@return number # The timer ID, used for cancellation.
function event.timer(interval, callback, times) end

---Cancel a previously created timer.
---@param timerId number # The ID of the timer to cancel.
---@return boolean # True if successfully stopped, false if no such timer exists.
function event.cancel(timerId) end

---Pull and return the next available event from the queue or wait for one to become available.
---@param timeout number|nil # Maximum time in seconds to wait for a new event. Defaults to nil (indefinite).
---@param name string|nil # Filter events by name. Defaults to nil (no filter).
---@vararg any # Additional parameters to filter event arguments by equality.
---@return string, ... # The event name and its arguments.
function event.pull(timeout, name, ...) end

---Pull and return the next available event from the queue or wait for one to become available.
---@param name string|nil # Filter events by name. Defaults to nil (no filter).
---@vararg any # Additional parameters to filter event arguments by equality.
---@return string, ... # The event name and its arguments.
function event.pull(name, ...) end

---Pull the next available event with advanced filtering.
---@param timeout number|nil # Maximum time in seconds to wait for a new event. Defaults to nil (indefinite).
---@param filter function # Function to filter events. Should return true to accept an event.
---@return string, ... # The event name and its arguments.
function event.pullFiltered(timeout, filter) end

---Pull the next available event matching any of the specified names.
---@vararg string # Event names to listen for.
---@return string, ... # The event name and its arguments.
function event.pullMultiple(...) end

---Global error handler for event callbacks.
---@param message any # The error message or exception object.
function event.onError(message) end

---Push a custom event into the event queue.
---@param name string # The name of the event.
---@vararg any # Additional arguments to pass with the event.
function event.push(name, ...) end

return event