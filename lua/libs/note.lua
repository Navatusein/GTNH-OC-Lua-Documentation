---@meta "note"

---@class note
local note = {}

---@alias NoteNames "C0"|"C#0/Db0"|"D0"|"D#0/Eb0"|"E0"|"F0"|"F#0/Gb0"|"G0"|"G#0/Ab0"|"A0"|"A#0/Bb0"|"B0"|"C1"|"C#1/Db1"|"D1"|"D#1/Eb1"|"E1"|"F1"|"F#1/Gb1"|"G1"|"G#1/Ab1"|"A1"|"A#1/Bb1"|"B1"|"C2"|"C#2/Db2"|"D2"|"D#2/Eb2"|"E2"|"F2"|"F#2/Gb2"|"G2"|"G#2/Ab2"|"A2"|"A#2/Bb2"|"B2"|"C3"|"C#3/Db3"|"D3"|"D#3/Eb3"|"E3"|"F3"|"F#3/Gb3"|"G3"|"G#3/Ab3"|"A3"|"A#3/Bb3"|"B3"|"C4"|"C#4/Db4"|"D4"|"D#4/Eb4"|"E4"|"F4"|"F#4/Gb4"|"G4"|"G#4/Ab4"|"A4"|"A#4/Bb4"|"B4"|"C5"|"C#5/Db5"|"D5"|"D#5/Eb5"|"E5"|"F5"|"F#5/Gb5"|"G5"|"G#5/Ab5"|"A5"|"A#5/Bb5"|"B5"|"C6"|"C#6/Db6"|"D6"|"D#6/Eb6"|"E6"|"F6"|"F#6/Gb6"|"G6"|"G#6/Ab6"|"A6"|"A#6/Bb6"|"B6"|"C7"|"C#7/Db7"|"D7"|"D#7/Eb7"|"E7"|"F7"|"F#7/Gb7"|"G7"|"G#7/Ab7"|"A7"|"A#7/Bb7"|"B7"|"C8"

---@alias MidiCodes 12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108

---@diagnostic disable-next-line: undefined-doc-name
---@alias NoteFrequencies 16.35|17.32|18.35|19.45|20.60|21.83|23.12|24.50|25.96|27.50|29.14|30.87|32.70|34.65|36.71|38.89|41.20|43.65|46.25|49.00|51.91|55.00|58.27|61.74|65.41|69.30|73.42|77.78|82.41|87.31|92.50|98.00|103.83|110.00|116.54|123.47|130.81|138.59|146.83|155.56|164.81|174.61|185.00|196.00|207.65|220.00|233.08|246.94|261.63|277.18|293.66|311.13|329.63|349.23|369.99|392.00|415.30|440.00|466.16|493.88|523.25|554.37|587.33|622.25|659.25|698.46|739.99|783.99|830.61|880.00|932.33|987.77|1046.50|1108.73|1174.66|1244.51|1318.51|1396.91|1479.98|1567.98|1661.22|1760.00|1864.66|1975.53|2093.00|2217.46|2349.32|2489.02|2637.02|2793.83|2959.96|3135.96|3322.44|3520.00|3729.31|3951.07|4186.01

---Converts a note in string form (e.g. "A#4" or "Gb3") or a given frequency into the respective MIDI code.
---@param n NoteFrequencies|NoteNames # The note as a string or frequency in Hz.
---@return MidiCodes # The corresponding MIDI code.
function note.midi(n) end

---Converts a note in string form (e.g. "A#4") or a given MIDI code into the respective frequency in Hz.
---@param n MidiCodes|NoteNames # The note as a string or MIDI code.
---@return NoteFrequencies # The corresponding frequency in Hz.
function note.freq(n) end

---Converts a MIDI value back into a note string.
---If you have a frequency, use `note.name(note.midi(frequency))` instead.
---@param n MidiCodes # The MIDI code.
---@return NoteNames # The note name (e.g., "C4").
function note.name(n) end

---Converts note block ticks (0-24) into MIDI code (34-58) and vice versa.
---Useful for working with note blocks and OpenComponents.
---@param n number # The tick value (0-24) or MIDI code (34-58).
---@return number # The corresponding MIDI code or tick value.
function note.ticks(n) end

---Plays a note using `computer.beep()` with a specified duration.
---@param tone NoteNames|MidiCodes # The note name (e.g., "C4") or MIDI code.
---@param duration number # The duration in seconds.
function note.play(tone, duration) end

return note