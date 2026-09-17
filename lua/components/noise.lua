---@meta _

---The Noise Card from Computronics.
---@class noise: BaseComponent
---@field type "noise"
---@field channel_count table # Provided by the mod as a table.
---@field modes table # Provided by the mod as a table.
local noise = {}

---Adds the frequency played with the duration to the channel's buffer, optionally with a delay before playing. Returns true on success.
---@param channel number
---@param frequency number
---@param duration? number
---@param initialDelay? number
---@return boolean
function noise.add(channel, frequency, duration, initialDelay) end

---Clears the buffer.
---@param channel number
function noise.clear(channel) end

---returns the amount of channels currently in use
---@return number
function noise.getActiveChannels() end

---returns the current mode of the specified channel
---@param channel number
---@return number
function noise.getMode(channel) end

---returns true if the card is not already processing a command
---@return boolean
function noise.isReady() end

---table must have 8 or fewer entries. Each entry must be a table containing a frequency and a duration as values; plays each frequency for the specified duration. Returns true on success.
---@param channels table
---@return boolean
function noise.play(channels) end

---Starts processing the buffer and clears it. Returns true on success.
---@return boolean
function noise.process() end

---Sets the audio mode of the specified channel.
---@param channel number
---@param mode number
---@return boolean
function noise.setMode(channel, mode) end
