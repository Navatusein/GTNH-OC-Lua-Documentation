---@meta _

---@class database: BaseComponent
---@field type "database"
local database = {}

---Get the representation of the item stack stored in the specified slot.
---@param slot integer # The slot to get an item from.
---@return ItemStack|nil # The item stack's descriptor if a value was found.
function database.get(slot) end

---Gets the index of an item stack with the specified hash. Returns a negative value if no such stack was found.
---@param hash string # The hash of the item you are looking for.
---@return number # slot of the item or -1 if not found
function database.indexOf(hash) end

---Set an item into the specified database slot. NBT tag is expected in JSON format
---@param slot integer # The slot to write an item to
---@param id string  # The unlocalized name of the item eg: minecraft:stone
---@param damage integer # The damage/metadata of the item
---@param nbt? string # The nbt of the item, formatted using JSON
---@return boolean # True if the item was successfully written.
---@return nil|string # An error telling you what went wrong.
function database.set(slot, id, damage, nbt) end

---Clears the specified slot. Returns true if there was something in the slot before.
---@param slot integer
---@return boolean # Returns true if there was something in the slot before.
function database.clear(slot) end

---Copies the data stored in this database to another database with the specified address.
---Will error if the database has empty slots.
---@param dbAddress string # The address of the database to copy to.
---@return integer # how many slots were overwritten.
function database.clone(dbAddress) end

---Computes a hash value for the item stack in the specified slot.
---@param slot integer # The slot to compute the hash for
---@return string
function database.computeHash(slot) end

---Copies an entry to another slot, optionally to another database. Returns true if something was overwritten.
---@param fromSlot integer # The slot to copy from
---@param toSlot integer # The slot to copy to
---@param dbAddress? string # (Optional) The address of the database to copy to.
---@return boolean # True if something was overwritten.
function database.copy(fromSlot, toSlot, dbAddress) end