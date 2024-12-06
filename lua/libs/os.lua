---@meta os

---@class oslib
local os = {}

---Allows pausing a script for the specified amount of time. os.sleep consumes events but registered event handlers and threads are still 
---receiving events during the sleep. Rephrased, signals will still be processed by event handlers while the sleep is active, i.e. you cannot pull signals 
---that were accumulated during the sleep after it ended, since no signals will remain in the queue (or at least not all of them).
---@param seconds number # Number of seconds to pause script.
function os.sleep(seconds) end

return os