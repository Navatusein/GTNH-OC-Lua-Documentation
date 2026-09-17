---@meta "io"

---File and stream access.
---
---This is the standard Lua `io` library as OpenOS implements it. It is a global, so
---`require("io")` is not needed, and what it returns are `File` buffers from the
---`buffer` library. Paths are resolved against the working directory of the shell.
---@class IoLibrary
---@field stdin File # The standard input of the current process.
---@field stdout File # The standard output of the current process.
---@field stderr File # The standard error of the current process.
local io = {}

---Opens a file.
---@param path string # The path to the file, relative to the working directory.
---@param mode? string # One of `"r"`, `"rb"`, `"w"`, `"wb"`, `"a"`, `"ab"`. Defaults to `"r"`.
---@return File|nil # The open file, or `nil` and an error message.
---@return string|nil
function io.open(path, mode) end

---Closes a file, or the default output if none is given.
---@param file? File
---@return boolean|nil
---@return string|nil
function io.close(file) end

---Flushes the default output.
function io.flush() end

---Returns an iterator over the lines of a file, closing it when the iterator finishes.
---With no file name, reads from the default input and leaves it open.
---@param filename? string # The file to read.
---@param ... string|integer # Read formats, as `File:read` takes them.
---@return fun(): string|nil
function io.lines(filename, ...) end

---Reads from the default input.
---@param ... string|integer # Read formats: `"l"`, `"L"`, `"n"`, `"a"`, or a byte count.
---@return string|number|nil ...
function io.read(...) end

---Writes to the default output.
---@param ... string|number
---@return File # The default output, so that writes can be chained.
function io.write(...) end

---Gets or sets the default input of the current process.
---@param file? File|string # A file or a path to open for reading.
---@return File
function io.input(file) end

---Gets or sets the default output of the current process.
---@param file? File|string # A file or a path to open for writing.
---@return File
function io.output(file) end

---Gets or sets the standard error of the current process.
---@param file? File|string # A file or a path to open for writing.
---@return File
function io.error(file) end

---Gets or sets one of the standard streams of the current process by descriptor.
---@param fd integer # 0 for input, 1 for output, 2 for error.
---@param file? File|string # A file or a path to open.
---@param mode? string # The mode to open a path with.
---@return File
function io.stream(fd, file, mode) end

---Returns a stream that follows whichever file the given descriptor points at,
---even if that file is replaced later.
---@param fd integer # 0 for input, 1 for output, 2 for error.
---@return File
function io.dup(fd) end

---Runs a program and connects a pipe to it.
---@param prog string # The command line to run.
---@param mode? string # `"r"` to read its output, `"w"` to write to its input. Defaults to `"r"`.
---@param env? table # The environment to run it in.
---@return File|nil # The pipe, or `nil` and an error message.
---@return string|nil
function io.popen(prog, mode, env) end

---Creates a file in the temporary file system that is removed when it is closed.
---@return File|nil
function io.tmpfile() end

---Tells whether a value is a file, and whether it is still open.
---@param object any
---@return "file"|"closed file"|nil # `nil` if the value is not a file at all.
function io.type(object) end

return io
