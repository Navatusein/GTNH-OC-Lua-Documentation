---@meta _

---@class ThreadHandle
local ThreadHandle = {}

---Resumes a suspended thread.
---@return boolean, string|nil # True on success, or false and an error message on failure.
function ThreadHandle:resume() end

---Suspends a running thread.
---@return boolean, string|nil # True on success, or false and an error message on failure.
function ThreadHandle:suspend() end

---Terminates the thread.
function ThreadHandle:kill() end

---Gets the current status of the thread.
---@return string # One of: "running", "suspended", or "dead".
function ThreadHandle:status() end

---Attaches the thread to a process (blocks parent process from closing until thread completes).
---@param level number|nil # The process level to attach to (default is the current process).
---@return boolean, string|nil # True on success, or false and an error message on failure.
function ThreadHandle:attach(level) end

---Detaches the thread from its parent, allowing it to run independently.
---@return ThreadHandle, string|nil # Returns self if successful, or nil and an error message.
function ThreadHandle:detach() end

---Blocks the caller until the thread finishes execution.
---@param timeout number|nil # Maximum time to wait in seconds (optional).
---@return boolean, string|nil # True on success, or false and an error message.
function ThreadHandle:join(timeout) end