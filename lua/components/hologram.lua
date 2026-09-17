---@meta _

---The Hologram Projector.
---@class hologram: BaseComponent
---@field type "hologram"
local hologram = {}

---Clears the hologram.
function hologram.clear() end

---Copies an area of columns by the specified translation.
---@param x number
---@param z number
---@param sx number
---@param sz number
---@param tx number
---@param tz number
function hologram.copy(x, z, sx, sz, tx, tz) end

---Fills an interval of a column with the specified value.
---@param x number
---@param z? number
---@param minY? number
---@param maxY? number
---@param value? number or boolean
function hologram.fill(x, z, minY, maxY, value) end

---Returns the value for the specified voxel.
---@param x number
---@param y number
---@param z number
---@return number
function hologram.get(x, y, z) end

---Get the dimension of the x,y,z axes.
---@return number, number, number
function hologram.getDimensions() end

---Get the color defined for the specified value.
---@param index number
---@return number
function hologram.getPaletteColor(index) end

---Returns the render scale of the hologram.
---@return number
function hologram.getScale() end

---Returns the relative render projection offsets of the hologram.
---@return number, number, number
function hologram.getTranslation() end

---The color depth supported by the hologram.
---@return number
function hologram.maxDepth() end

---Set the value for the specified voxel.
---@param x number
---@param y number
---@param z number
---@param value number or boolean
function hologram.set(x, y, z, value) end

---Set the color defined for the specified value.
---@param index number
---@param value number
---@return number
function hologram.setPaletteColor(index, value) end

---Set the raw buffer to the specified byte array, where each byte represents a voxel color. Nesting is x,z,y.
---@param data string
function hologram.setRaw(data) end

---Set the base rotation of the displayed hologram.
---@param angle number
---@param x number
---@param y number
---@param z number
---@return boolean
function hologram.setRotation(angle, x, y, z) end

---Set the rotation speed of the displayed hologram.
---@param speed number
---@param x number
---@param y number
---@param z number
---@return boolean
function hologram.setRotationSpeed(speed, x, y, z) end

---Set the render scale. A larger scale consumes more energy.
---@param value number
function hologram.setScale(value) end

---Sets the relative render projection offsets of the hologram.
---@param tx number
---@param ty number
---@param tz number
function hologram.setTranslation(tx, ty, tz) end
