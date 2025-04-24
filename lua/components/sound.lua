---@meta _

---@class sound: BaseComponent
---@field type "sound"
---@field modes table
---@field channel_count table
local sound = {}

---Sets the general volume of the entire sound card.
---This is not an instruction — it applies immediately and affects all channels.
---@param volume number # A value between 0 and 1.
function sound.setTotalVolume(volume) end

---Clears the instruction queue.
function sound.clear() end

---Starts processing the current instruction queue.
---@return boolean # `true` if processing started, `false` if already processing.
function sound.process() end

---Adds a delay of the specified duration.
---Instruction: This allows time for the sound to play before continuing.
---@param duration number # Duration in milliseconds.
function sound.delay(duration) end

---Opens the specified channel to allow sound generation.
---Instruction.
---@param channel integer
function sound.open(channel) end

---Closes the specified channel, stopping sound generation.
---Instruction.
---@param channel integer
function sound.close(channel) end

---Sets the wave type for the specified channel.
---Instruction.
---@param channel integer
---@param type integer # Index of the wave type from `sound.modes`.
function sound.setWave(channel, type) end

---Sets the frequency on the specified channel.
---Instruction.
---@param channel integer
---@param frequency number # Frequency in Hz.
function sound.setFrequency(channel, frequency) end

---Sets the volume of the specified channel.
---Instruction.
---@param channel integer
---@param volume number # Volume between 0 and 1.
function sound.setVolume(channel, volume) end

---Assigns an amplitude modulator channel to the specified channel.
---Instruction.
---@param channel integer
---@param modIndex integer # Index of the modulator channel.
function sound.setAM(channel, modIndex) end

---Removes the amplitude modulator from the specified channel.
---Instruction.
---@param channel integer
function sound.resetAM(channel) end

---Assigns a frequency modulator channel to the specified channel with intensity.
---Instruction.
---@param channel integer
---@param modIndex integer # Index of the modulator channel.
---@param intensity number # Intensity factor of modulation.
function sound.setFM(channel, modIndex, intensity) end

---Removes the frequency modulator from the specified channel.
---Instruction.
---@param channel integer
function sound.resetFM(channel) end

---Assigns ADSR (Attack, Decay, Sustain, Release) envelope to the specified channel.
---Instruction.
---@param channel integer
---@param attack number # Duration in milliseconds.
---@param decay number # Duration in milliseconds.
---@param attenuation number # Sustain level between 0 and 1.
---@param release number # Duration in milliseconds.
function sound.setADSR(channel, attack, decay, attenuation, release) end

---Removes ADSR envelope from the specified channel.
---Instruction.
---@param channel integer
function sound.resetEnvelope(channel) end

---Makes the specified channel generate LFSR noise.
---Instruction.
---@param channel integer
---@param initial integer # Initial state of the LFSR.
---@param mask integer # Bitmask to determine feedback taps.
function sound.setLFSR(channel, initial, mask) end
