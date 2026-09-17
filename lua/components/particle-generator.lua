---@meta _

---The Particle Generator from Draconic Evolution.
---
---Everything is configured through one setter keyed by property name, so a typo in the
---name or a value of the wrong type is reported as `false` rather than as an error.
---@class particle_generator: BaseComponent
---@field type "particle_generator"
local particleGenerator = {}

---Sets one property of the generator.
---
---Particle properties: `particles_enabled`, `red`, `green`, `blue`, `random_red`,
---`random_green`, `random_blue` (0-255), `motion_x`, `motion_y`, `motion_z`,
---`random_motion_x`, `random_motion_y`, `random_motion_z` (-5 to 5), `scale`,
---`random_scale` (0.01 to 50), `life`, `random_life` (0 to 1000), `spawn_x`, `spawn_y`,
---`spawn_z`, `random_spawn_x`, `random_spawn_y`, `random_spawn_z`, `fade`, `spawn_rate`,
---`collide`, `selected_particle`, `gravity`.
---
---Beam properties: `beam_enabled`, `render_core`, `beam_red`, `beam_green`, `beam_blue`,
---`beam_scale`, `beam_pitch`, `beam_yaw`, `beam_length`, `beam_rotation`.
---@param property string # The name of the property to set.
---@param value number|boolean # The new value, of the type that property expects.
---@return boolean # False if the property is unknown or the value has the wrong type.
function particleGenerator.setGeneratorProperty(property, value) end

---Returns every property of the generator, keyed by the same names `setGeneratorProperty` takes.
---@return table<string, number|boolean>
function particleGenerator.getGeneratorState() end

---Resets every property to its default.
function particleGenerator.resetGeneratorState() end
