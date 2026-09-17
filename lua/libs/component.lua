---@meta "component"

---@class ComponentLibrary
---@field advanced_cipher advanced_cipher
---@field aemultipart aemultipart
---@field alveary alveary
---@field anchor anchor
---@field angel angel
---@field arcane_crafting arcane_crafting
---@field assembler assembler
---@field barcode_reader barcode_reader
---@field bc_pipe bc_pipe
---@field beacon beacon
---@field bec_diode bec_diode
---@field bec_io_node bec_io_node
---@field bec_storage bec_storage
---@field beekeeper beekeeper
---@field beep beep
---@field blockessentiareservoir blockessentiareservoir
---@field blockjar_0 blockjar_0
---@field blockmetaldevice_0 blockmetaldevice_0
---@field blockmetaldevice_1 blockmetaldevice_1
---@field blood_altar blood_altar
---@field boiler_firebox boiler_firebox
---@field brewing_stand brewing_stand
---@field camera camera
---@field caninv caninv
---@field chat_box chat_box
---@field chunkloader chunkloader
---@field cipher cipher
---@field colorful_lamp colorful_lamp
---@field colors colors
---@field comparator comparator
---@field computer computer
---@field configurator configurator
---@field crafting crafting
---@field data data
---@field database database
---@field debug debug
---@field disk_drive disk_drive
---@field draconic_reactor draconic_reactor
---@field draconic_rf_storage draconic_rf_storage
---@field draconicevolution_generator draconicevolution_generator
---@field drive drive
---@field drone drone
---@field eeprom eeprom
---@field ender_chest ender_chest
---@field enderchest_1 enderchest_1
---@field enderio_machine enderio_machine
---@field essentia_exportbus essentia_exportbus
---@field essentia_importbus essentia_importbus
---@field essentia_storagebus essentia_storagebus
---@field experience experience
---@field filesystem filesystem
---@field fluid_exportbus fluid_exportbus
---@field fluid_gate fluid_gate
---@field fluid_importbus fluid_importbus
---@field fluid_interface fluid_interface
---@field fluid_storagebus fluid_storagebus
---@field flux_gate flux_gate
---@field for_alveary_0 for_alveary_0
---@field for_alveary_3 for_alveary_3
---@field for_alveary_4 for_alveary_4
---@field for_alveary_6 for_alveary_6
---@field forestry_analyzer forestry_analyzer
---@field furnace furnace
---@field generator generator
---@field generatorfurnace generatorfurnace
---@field geolyzer geolyzer
---@field glasses glasses
---@field gpu gpu
---@field gt_batterybuffer gt_batterybuffer
---@field gt_energycontainer gt_energycontainer
---@field gt_machine gt_machine
---@field hologram hologram
---@field info_panel info_panel
---@field infusion_matrix infusion_matrix
---@field internet internet
---@field inventory_controller inventory_controller
---@field iron_noteblock iron_noteblock
---@field items items
---@field jukebox jukebox
---@field keyboard keyboard
---@field leash leash
---@field level_maintainer level_maintainer
---@field locomotive_relay locomotive_relay
---@field magicbees_magicapiary magicbees_magicapiary
---@field master_ritual_stone master_ritual_stone
---@field me_cellworkbench me_cellworkbench
---@field me_controller me_controller
---@field me_exportbus me_exportbus
---@field me_importbus me_importbus
---@field me_interface me_interface
---@field me_interface_terminal me_interface_terminal
---@field me_storagebus me_storagebus
---@field microcontroller microcontroller
---@field modem modem
---@field modtur_turretbasefive modtur_turretbasefive
---@field modtur_turretbasefour modtur_turretbasefour
---@field modtur_turretbaseone modtur_turretbaseone
---@field modtur_turretbasethree modtur_turretbasethree
---@field modtur_turretbasetwo modtur_turretbasetwo
---@field motion_sensor motion_sensor
---@field navigation navigation
---@field net_splitter net_splitter
---@field noise noise
---@field note_block note_block
---@field oc_pattern_editor oc_pattern_editor
---@field os_alarm os_alarm
---@field os_biometric os_biometric
---@field os_cardwriter os_cardwriter
---@field os_datablock os_datablock
---@field os_door os_door
---@field os_energyturret os_energyturret
---@field os_entdetector os_entdetector
---@field os_keypad os_keypad
---@field os_magreader os_magreader
---@field os_rfidreader os_rfidreader
---@field particle particle
---@field particle_generator particle_generator
---@field piston piston
---@field printer3d printer3d
---@field radar radar
---@field reactor reactor
---@field reactor_chamber reactor_chamber
---@field reactor_redstone_port reactor_redstone_port
---@field redstone redstone
---@field relay relay
---@field robot robot
---@field screen screen
---@field self_destruct self_destruct
---@field sign sign
---@field sound sound
---@field speech speech
---@field speech_box speech_box
---@field stargate stargate
---@field steam_turbine steam_turbine
---@field swarminv swarminv
---@field tablet tablet
---@field tank_controller tank_controller
---@field tape_drive tape_drive
---@field thaumicenergistics_block_essentia_vibration_chamber thaumicenergistics_block_essentia_vibration_chamber
---@field ticket_machine ticket_machine
---@field tierFiveTurretBase tierFiveTurretBase
---@field tierFourTurretBase tierFourTurretBase
---@field tierOneTurretBase tierOneTurretBase
---@field tierThreeTurretBase tierThreeTurretBase
---@field tierTwoTurretBase tierTwoTurretBase
---@field tile_for_apiculture_0_name tile_for_apiculture_0_name
---@field tile_for_apiculture_2_name tile_for_apiculture_2_name
---@field tilechest tilechest
---@field tps_card tps_card
---@field tractor_beam tractor_beam
---@field trading trading
---@field transposer transposer
---@field tunnel tunnel
---@field upgrade_me upgrade_me
---@field waypoint waypoint
---@field world_sensor world_sensor
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