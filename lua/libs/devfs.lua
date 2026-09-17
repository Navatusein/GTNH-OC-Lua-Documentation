---@meta "devfs"

---The `/dev` file system.
---
---This is what makes hardware readable as files: `/dev/eeprom`, `/dev/random`,
---`/dev/null`, `/dev/hpet`, and one directory per component under `/dev/components`.
---It is mounted during boot, so a script that only wants to read `/dev/random` needs
---nothing from here and can use the `filesystem` library or `io.open`.
---
---Reach for this library when adding a device of your own to `/dev`.
---@class DevfsLibrary
---@field root table # The root node of the device tree.
---@field proxy table # The file system proxy `/dev` is mounted with.
local devfs = {}

---Creates a node in the device tree.
---
---With no proxy the node is a directory. With a proxy that has `read` or `write` the
---node behaves as a file, and one with `list` behaves as a directory of its own.
---@param path string # Where in `/dev` to create it.
---@param proxy? table # The handlers backing the node.
---@return table|nil # The node, or `nil` and an error message.
---@return string|nil
function devfs.create(path, proxy) end

---Runs every startup script in `/lib/core/devfs/`, which is how the standard devices
---get created. Called once during boot; calling it again does nothing.
---@param public_proxy table # The proxy to expose as the file system.
function devfs.register(public_proxy) end

---Returns the component proxy behind a path in `/dev`.
---@param path string # A path such as `/dev/components/by-address/<address>`.
---@return table|nil # The component proxy, or `nil` and an error message.
---@return string|nil
function devfs.getDevice(path) end

---Returns the label of the device behind a path.
---@param path string
---@return string|nil
function devfs.getDeviceLabel(path) end

---Sets the label of the device behind a path.
---@param path string
---@param label string
---@return string|nil # The new label, or `nil` and an error message.
---@return string|nil
function devfs.setDeviceLabel(path, label) end

return devfs
