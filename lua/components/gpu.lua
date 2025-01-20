---@meta _

---@class gpu: BaseComponent
---@field type "gpu"
local gpu = {}

---Tries to bind the GPU to a screen with the specified address.
---
---Resets the screen unless reset is set to false.
---
---A GPU can only be bound to one screen at a time.
---All operations on it will work on the bound screen.
---If you wish to control multiple screens at once,
---you'll need to put more than one graphics card into your computer.
---@param address string # the address of the screen
---@param reset? boolean # set to false to prevent a screen reset
---@return boolean success # true on success
---@return string|nil error # a string where an error occurs
function gpu.bind(address, reset) end

---Returns the address of the screen bound to the gpu.
---@return string # address
function gpu.getScreen() end

---Gets the current background color.
---@return integer color # 0x00RRGGBB int for generic colors, 0-15 when using a palettes
---@return boolean isPaletteColor # True if the color is a palette number
function gpu.getBackground() end

---Sets the background color.
---@param color integer # the color an integer in the format of 0x00RRGGBB or the palette index when using a palette
---@param isPaletteIndex? boolean # wether the color parameter is a palette index, defaults to true
---@return integer oldBackgroundColor # The old color value it was set to, not compressed to gpu's color depth
---@return integer|nil oldPaletteIndex # If the old background was a palette color, the index of that palette
function gpu.setBackground(color, isPaletteIndex) end


---Gets the current foreground/text color.
---@return integer color # 0x00RRGGBB int for generic colors, 0-15 when using a palettes
---@return boolean isPaletteColor # True if the color is a palette number
function gpu.getForeground() end

---Sets the foreground/text color.
---@param color integer # The color an integer in the format of 0x00RRGGBB or the palette index when using a palette
---@param isPaletteIndex? boolean # Wether the color parameter is a palette index, defaults to true
---@return integer oldBackgroundColor # The old color value it was set to, not compressed to gpu's color depth
---@return integer|nil oldPaletteIndex # If the old color was a palette color, the index of that palette
function gpu.setForeground(color, isPaletteIndex) end

---Gets the current color of a palette.
---@param index integer # the index of the palette.
---@return integer color # the color as an integer in the format of 0x00RRGGBB.
function gpu.getPaletteColor(index) end

---Sets the RGB value of the color in the palette at the specified index.
---@param index integer # The index of the palette.
---@param value integer # The new color as an integer in the format of 0x00RRGGBB.
---@return integer oldColor # The old color as an integer in the format of 0x00RRGGBB.
function gpu.setPaletteColor(index, value) end

---Gets the maximum supported color depth supported by the GPU and the screen it is bound to (minimum of the two).
---@return integer depth The maximum color depth of the gpu.
function gpu.maxDepth() end

---Gets the currently set color depth of the GPU/screen, in bits. Can be 1, 4 or 8.
---@return integer depth The maximum color depth of the gpu.
function gpu.getDepth() end

---Sets the color depth to use. Can be up to the maximum supported color depth.
--- If a larger or invalid value is provided it will throw an error.
---@param bit integer # Either 1,4,or 8
---@return "OneBit"|"FourBit"|"EightBit" oldDepthString # The old depth as one of the strings OneBit, FourBit, or EightBit.
function gpu.setDepth(bit) end

---Gets the maximum resolution supported by the GPU and the screen it is bound to (minimum of the two).
---@return integer width # The maximum resolution's width
---@return integer height # The maximum resolution's height
function gpu.maxResolution() end

---Gets the current resolution of the GPU.
---@return integer width # The current resolution's width
---@return integer height # The current resolution's height
function gpu.getResolution() end

---Sets the specified resolution. Can be up to the maximum supported resolution.
---If a larger or invalid resolution is provided it will throw an error.
---@param width integer # The desired width
---@param height integer # The desired height
---@return boolean success # True if the resolution was changed (may return false if an attempt was made to set it to the same value it was set before), false otherwise.
function gpu.setResolution(width, height) end

---Get the current viewport resolution.
---@return integer width # The width of the viewport
---@return integer height # The height of the viewport
function gpu.getViewport() end

---Set the current viewport resolution.
---
---This makes it look like screen resolution is lower, but the actual resolution stays the same.
---Characters outside top-left corner of specified size are just hidden,
---and are intended for rendering or storing things off-screen and copying them to the visible area when needed.
---Changing resolution will change viewport to whole screen.
---@param width integer # The resolution of the viewport
---@return boolean success # True if it was changed (may return false if an attempt was made to set it to the same value it was set before), false otherwise.
function gpu.setViewport(width, height) end

---Gets the character, foreground/text color and the background color at a specific coordinate
---@param x integer # The x coordinate of the character
---@param y integer # The y coordinate of the character
---@return string char # The character being displayed
---@return integer foregroundColor # The color of the text being displayed as an integer in the format of 0x00RRGGBB.
---@return integer backgroundColor # The color of the text being displayed as an integer in the format of 0x00RRGGBB.
---@return integer|nil foregroundPalette # The palette index if the text color uses a palette.
---@return integer|nil backgroundPalette # The palette index if the background color uses a palette.
function gpu.get(x, y) end

---Writes a string to the screen, starting at the specified coordinates.
---
---The string will be copied to the screen's buffer directly, in a single row.
---This means even if the specified string contains line breaks,
---these will just be printed as special characters,
---the string will not be displayed over multiple lines.
---
---If the 4th parameter is set to true, the text will be displayed vertically
---@param x integer # The x coordinate of the start of the text
---@param y integer # The y coordinate of the start of the text
---@param value string # The string to display
---@param vertical? boolean # Set to true to display the text vertically, defaults to false.
---@return string char # True if the string was displayed successfully
function gpu.set(x, y, value, vertical) end

---Copies a portion of the screens buffer to another location.
---
---The source rectangle is specified by the x, y, width and height parameters.
---
---The target rectangle is defined by x + tx, y + ty, width and height.
---@param x integer # The x coordinate of the top left corner of the source rectangle.
---@param y integer # The y coordinate of the top left corner of the source rectangle.
---@param width integer # The width of the source rectangle.
---@param height integer # The height of the source rectangle.
---@param tx integer # The x coordinate of the top left corner of the destination.
---@param ty integer # The y coordinate of the top right corner of the destination.
---@return boolean success # On success, false otherwise.
function gpu.copy(x, y, width, height, tx, ty) end

---Fills a rectangle in the screen buffer with the specified character.
---
---The target rectangle is specified by the x and y coordinates and the rectangle's width and height.
---
---The fill character char must be a string of length one, i.e. a single character.
---Note that filling screens with spaces ( ) is usually less expensive, i.e. consumes less energy,
---because it is considered a “clear” operation (see config).
---@param x integer # The x coordinate of the top left corner of the rectangle.
---@param y integer # The y coordinate of the top left corner of the rectangle.
---@param width integer # The width of the rectangle to fill.
---@param height integer # The height of the rectangle to fill.
---@param char string # The character to display
---@return boolean success # True on success, false otherwise.
function gpu.fill(x, y, width, height, char) end

---Returns the index of the currently selected buffer.
---
---0 is reserved for the screen, and may return 0 even when there is no screen
---@return integer bufferIndex # The index of the active buffer.
function gpu.getActiveBuffer() end

---Sets the active buffer to index.
---
---0 is reserved for the screen and can be set even when there is no screen.
---@return integer|nil bufferIndex # Returns nil for an invalid index (0 is valid even with no screen)
function gpu.setActiveBuffer(index) end


---Returns an array of all current page indexes (0 is not included in this list, that is reserved for the screen).
---@return integer[] bufferIndexes # The indexes of all the active buffers, screen not included
function gpu.buffers() end

---Allocates a buffer with the gpu's max resolution as it's dimension.
---
---A buffer can be allocated even when there is no screen bound to this gpu.
---
---Index 0 is always reserved for the screen and thus the lowest possible index of an allocated buffer is always 1.
---@return integer|nil bufferIndex # Returns the index of this new buffer or nil if it couldn't be allocated.
---@return string|nil error # A message if the buffer couldn't be allocated
function gpu.allocateBuffer() end

---Allocates a buffer with the specified dimensions.
---
---A buffer can be allocated even when there is no screen bound to this gpu.
---
---Index 0 is always reserved for the screen and thus the lowest possible index of an allocated buffer is always 1.
---@return integer|nil bufferIndex # Returns the index of this new buffer or nil if it couldn't be allocated.
---@return string|nil error # A message if the buffer couldn't be allocated
function gpu.allocateBuffer(width, height) end


---Frees the current buffer
---
---The gpu automatically switches back to buffer 0 (the screen buffer)
---@return boolean success # True if the buffer was successfully freed
function gpu.freeBuffer() end

---Frees the specified buffer
---
---Removes buffer at the specified index. Returns true if the buffer was removed. 
---
---The gpu automatically switches back to buffer 0 (the screen buffer) if the buffer is the active buffer
---@return boolean success # True if the buffer was successfully freed
function gpu.freeBuffer(bufferIndex) end

---Removes all buffers, freeing all video memory. The buffer index is always 0 after this call.
function gpu.freeAllBuffers() end

---Returns the total memory size of the gpu vram.
---
---This does not include the screen.
---@return integer totalMemory # The total vram capacity.
function totalMemory() end

---Returns the total free memory not allocated to buffers. This does not include the screen.
---@return integer freeMemory # The remaining amount of vram.
function gpu.freeMemory() end

---Returns the dimensions of the active buffer.
---@return integer width # The width of the active buffer.
---@return integer height # The height of the active buffer.
function gpu.getBufferSize() end

---Returns the dimensions of the specified buffer
---@param bufferIndex integer The index of the buffer you want the dimensions of.
---@return integer width # The width of the active buffer.
---@return integer height # The height of the active buffer.
function gpu.getBufferSize(bufferIndex) end

---Copy a region from buffer to buffer, screen to buffer, or buffer to screen.
---
---bitblt should preform very fast on repeated use.
---
---If the buffer is dirty there is an initial higher cost to sync the buffer with the destination object.
---
---If you have a large number of updates to make with frequent bitblt, consider making multiple and smaller buffers.
---
---If you plan to use a static buffer (one with few or no updates), then a large buffer is just fine.
---@param dst? integer # The destination of the buffer defaults to 0
---@param dstX? integer # The x coordinate of the top left corner of the rectangle to paste on the destination buffer. defaults to 1
---@param dstY? integer # The y coordinate of the top left corner of the rectangle to paste on the destination buffer. defaults to 1
---@param width? integer # The width of the copied rectangle. Defaults to the width of the destination buffer.
---@param height? integer # The height of the copied rectangle. Defaults to the height of the destination buffer.
---@param srcX? integer # The x coordinate of the top left corner of the rectangle to copy on the source buffer.
---@param srcY? integer # The y coordinate of the top left corner of the rectangle to copy on the source buffer.
---@return boolean success # True on success
function gpu.bitblt(dst, dstX, dstY, width, height, src, srcX, srcY) end