---@meta "component"

---@class component
---@field gt_machine gt_machine
---@field inventory_controller inventory_controller
---@field gpu gpu
---@field screen screen
---@field glasses glasses
---@field aemultipart aemultipart
---@field me_interface me_interface
---@field me_exportbus me_exportbus
---@field me_controller me_controller
---@field level_maintainer level_maintainer
---@field tilechests tilechest
---@field database database
---@field transposer transposer
---@field redstone redstone
---@field modem modem
---@field tps_card tps_card
local component = {}

---Returns the documentation string for the method with the specified name of the component with the specified address, if any.
---
---Note that you can also get this string by using tostring on a method in a proxy, for example tostring(component.screen.isOn).
---@param address string # The address of a component.
---@param methodName string # The name of the method.
function component.doc(address, methodName) end

---Calls the method with the specified name on the component with the specified address,
---passing the remaining arguments as arguments to that method.
---Depending on the called method's implementation this may throw an error.
---@param address string # The address of the component.
---@param methodName string # The name of the method to invoke.
---@vararg ... # The parameters for the method.
---@return any # Return type depends on the method invoked, annotation casting is recommended.
function component.invoke(address, methodName, ...) end

---Gets a list of all the components.
---@param filter? string # A complete or partial type name to look up with.
---@param exact? boolean # Set to true to do an exact match on the types.
---@return table<string, string> # The list of component that match the query.
function component.list(filter, exact) end

---Returns a table with the names of all methods provided by the component with the specified address and whether those methods are called directly.
---@param address string The address of the component.
---@return table<string,boolean> # the key is the name of the function while the value indicates if it's called directly.
function component.methods(address) end

---Gets a 'proxy' object for a component that provides all methods the component provides as fields,
---so they can be called more directly (instead of via invoke). This is what's used to generate 'primaries'
---of the individual component types, i.e. what you get via `component.blah`.
---
---For example, you can use it like so: `component.proxy(component.list("redstone")()).getInput(sides.north)`,
---which gets you a proxy for the first redstone component returned by the component.list iterator, and then calls getInput on it.
---
---Note that proxies will always have at least two fields, type with the component's type name, and address with the component's address.
---@generic T
---@param address string # The full address of the component.
---@param type? `T`
---@return T
function component.proxy(address, type) end

---Get the component type of the component with the specified address.
---@param address string # The full address of the component.
---@return string? # The type of the component.
---@return string? # An optional error message.
function component.type(address) end

---Returns the slot number of a component within the machine it's installed or -1.
---@param address string # The full address of the component.
---@return integer? # -1 if not applicable, else it represents a slot in the computer/server/robot.
---@return string? # An optional error message.
function component.slot(address) end

---Should return the fields of a component, but the feature seems to not be working.
---@param address string # The full address of the component.
---@return table
function component.slot(address) end

---Tries to resolve an abbreviated address to a full address.
---Returns the full address on success, or nil and an error message otherwise.
---Optionally filters by component type.
---@param address string # The address of the component, can be partial.
---@param type? string # The type of the component.
---@return string # The address of the component, nil if component not found.
function component.get(address, type) end

---Checks if a component of a specific type is available.
---@param type string # The type of component to look for.
---@return boolean # True if a component of that type exists.
function component.isAvailable(type) end

---Gets a proxy to the primary component of a given type.
---Can also be accessed using `component.name`.
---throws an error on invalid types.
---@generic T
---@param type `T` 
---@return T
function component.getPrimary(type) end

--- Sets a new primary component for the specified component type.
--- The address may be abbreviated, but must be valid if it is not nil.
--- Triggers the component_unavailable and component_available signals if set to nil or a new value, respectively.
---@param type string # The type of component to set a primary for.
---@param address string|nil # The address may be partial.
function component.setPrimary(type, address) end

return component