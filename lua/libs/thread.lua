---@meta "thread"

---@class thread
local thread = {}

---Creates a new thread and starts executing the given function.
---@param thread_proc function # The function to execute in the thread.
---@vararg any # Optional arguments passed to `thread_proc`.
---@return ThreadHandle # A handle to the created thread.
function thread.create(thread_proc, ...) end

---Waits for all threads in the list to complete.
---@param threads table # A table containing thread handles.
---@param timeout number|nil # Maximum time in seconds to wait. Defaults to nil (indefinite).
---@return boolean, string|nil # True on success, or false and an error message on failure.
function thread.waitForAll(threads, timeout) end

---Waits for any thread in the list to complete.
---@param threads table # A table containing thread handles.
---@param timeout number|nil # Maximum time in seconds to wait. Defaults to nil (indefinite).
---@return boolean, string|nil # True on success, or false and an error message on failure.
function thread.waitForAny(threads, timeout) end

---Gets the currently executing thread handle.
---@return ThreadHandle|nil # The current thread handle, or nil if called outside a thread.
function thread.current() end

return thread