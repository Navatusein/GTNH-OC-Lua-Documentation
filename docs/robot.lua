---@meta "robot"

---@class robot
local robot = {}

---Returns the robot's name.
---The name of a Robot is set initially during it's creation and cannot be changed programmatically.
---However you can change it using an anvil if you want.
---@return string
function robot.name() end

---@alias detectType "entity"|"solid"|"replaceable"|"liquid"|"passable"|"air"

---Detects what is directly in front of the robot and returns if the robot could move through it as well as a generic description.
---@return boolean # `true` if whatever is in front of the robot would prevent it from moving forward (a block or an entity) (Note: Drones return true even if the block is passable), false otherwise.
---@return detectType # The type of obstruction detected.
function robot.detect() end

---Detects what is directly up of the robot and returns if the robot could move through it as well as a generic description.
---@return boolean # `true` if whatever is in front of the robot would prevent it from moving forward (a block or an entity) (Note: Drones return true even if the block is passable), false otherwise.
---@return detectType # The type of obstruction detected.
function robot.detectUp() end

---Detects what is directly down of the robot and returns if the robot could move through it as well as a generic description.
---@return boolean # `true` if whatever is in front of the robot would prevent it from moving forward (a block or an entity) (Note: Drones return true even if the block is passable), false otherwise.
---@return detectType # The type of obstruction detected.
function robot.detectDown() end

---Returns the currently selected slot
---@return integer # The currently selected slot
function robot.select() end

---Selects the given inventory slot if specified and returns the current inventory slot
---@param slot integer The slot to select
---@return integer # The currently selected slot. Either the one specified (if successfully selected) or the one that was previously selected.
function robot.select(slot) end

---Returns the amount of select-able internal robot inventory slots. To get the number of inventory upgrade use: x = robot.inventorySize() / 16.
---@return integer
function robot.inventorySize() end

---Returns the number of items in the currently selected slot.
---@return integer # The amount of items in the currently selected slot.
function robot.count() end

---Returns the number of items in a given slot.
---@param slot integer # The slot to check for.
---@return integer # The amount of items in the slot.
function robot.count(slot) end

---Returns the amount of items that can be sucked up to fill the currently selected slot.
---@return integer # The amount of items that can be sucked up to fill the currently selected slot.
function robot.space() end

---Returns the amount of items that can be sucked up to fill a given slot.
---@param slot integer # The slot to check for.
---@return integer # The amount of items that can be sucked up to fill the given slot.
function robot.space(slot) end

---Moves all or up to count items from the currently selected slot to the specified slot.
---
---If there are items in the target slot then this function attempts to swap the items in those slots.
---This only succeeds if you move all items away from the current slot or if the current slot was empty anyways.
---
---Note that this will always return true if the specified slot is the same as the currently selected slot,
---or if both slots are empty, even though no items are effectively moved.
---@param slot integer # Specifies the slot move the items from the currently selected slot to.
---@param count? integer # If specified only up to this many items are moved, otherwise the entire stack is moved.
---@return boolean # `true` if exchanging the content between those slots was successful, false otherwise.
function robot.transferTo(slot, count) end

---Compares the item of the currently selected slot to the item of the slot specified and returns whether they are equal or not.
---
---Two items are considered the 'same' if their item type and metadata are the same.
---Stack size or any additional mod-specific item information (like for example the content of two floppy disks) are not checked.
---@param slot integer # Specifies the slot to compare the current slot to.
---@return boolean # `true` if the item type in the specified slot and the currently selected slot are equal, `false` otherwise.
function robot.compareTo(slot) end

---Compares the block in front of the robot with the item in the currently selected slot and returns whether they are the same or not.
---
---Blocks are considered the 'same' if their type and metadata are the same.
---Stack size or any additional information (like for example the inventory of a container) are not checked.
---
---Note that empty space in front of the robot is considered an 'air block' by the game,
---which cannot be put into an inventory slot and therefore compared by normal means.
---An empty slot and an air block are not the same.
---You can use robot.detect() beforehand to determine if there is actually a block in front of the robot.
---
---Also keep in mind that blocks that drop items need to be compared to the actual same block that is in the world.
---For example stone blocks drop as cobblestone and diamond ores drop diamond items, which are not the same for this function.
---Use silk-touch items to retrieve the actual block in the world for comparison.
---
---@return boolean
function robot.compare() end

---Compares the block over of the robot with the item in the currently selected slot and returns whether they are the same or not.
---
---Blocks are considered the 'same' if their type and metadata are the same.
---Stack size or any additional information (like for example the inventory of a container) are not checked.
---
---Note that empty space in front of the robot is considered an 'air block' by the game,
---which cannot be put into an inventory slot and therefore compared by normal means.
---An empty slot and an air block are not the same.
---You can use robot.detect() beforehand to determine if there is actually a block in front of the robot.
---
---Also keep in mind that blocks that drop items need to be compared to the actual same block that is in the world.
---For example stone blocks drop as cobblestone and diamond ores drop diamond items, which are not the same for this function.
---Use silk-touch items to retrieve the actual block in the world for comparison.
---
---@return boolean
function robot.compareUp() end

---Compares the block under of the robot with the item in the currently selected slot and returns whether they are the same or not.
---
---Blocks are considered the 'same' if their type and metadata are the same.
---Stack size or any additional information (like for example the inventory of a container) are not checked.
---
---Note that empty space in front of the robot is considered an 'air block' by the game,
---which cannot be put into an inventory slot and therefore compared by normal means. An empty slot and an air block are not the same.
---You can use robot.detect() beforehand to determine if there is actually a block in front of the robot.
---
---Also keep in mind that blocks that drop items need to be compared to the actual same block that is in the world.
---For example stone blocks drop as cobblestone and diamond ores drop diamond items, which are not the same for this function.
---Use silk-touch items to retrieve the actual block in the world for comparison.
---
---@return boolean
function robot.compareDown() end

---Tries to drop or store items from the currently selected inventory slot in front of the robot.
---
---If the block or entity (like chests or mine-carts with a chest) immediately in front of the robot has an accessible item inventory,
---the robot will try to put those items into this inventory instead of throwing them into the world.
---If the block in front has an inventory but the item could not be moved into it for any reason,
---then this function returns false and does not move any items.
---Where the item will be put on depends on the inventory and the side the robot is facing.
---Furnaces for example receive items to smelt from the top side.
---Also note that robots are considered “blocks with an inventory” as well and
---therefore items can be moved into robot slots as with any other inventory as well.
---
---This function cannot interact with non-item inventories (like for example fluid tanks) and
---will not consider them an inventory and therefore items will be thrown into the world instead.
---You need to use the robot.use function to interact with those types of blocks.
---
---Note that this will always return false, if the currently selected slot contains no items at all.
--- 
---@param side integer # What side to drop the item into
---@param count? integer # Specifies how many items to drop. If omitted or if count exceeds the amount of items in the currently selected slot, then all items in the currently selected slot are dropped.
---@return boolean # `true` if it was able to move at least 1 item.
---@return string? # The reason why it wasn't dropped.
function robot.drop(side, count) end

---Tries to drop or store items from the currently selected inventory slot above the robot.
---
---If the block or entity (like chests or mine-carts with a chest) immediately above the robot has an accessible item inventory,
---the robot will try to put those items into this inventory instead of throwing them into the world.
---If the block above has an inventory but the item could not be moved into it for any reason,
---then this function returns false and does not move any items.
--- 
---Where the item will be put on depends on the inventory and the side the robot is facing.
---Furnaces for example receive items to smelt from the top side.
---Also note that robots are considered “blocks with an inventory” as well and
---therefore items can be moved into robot slots as with any other inventory as well.
---
---This function cannot interact with non-item inventories (like for example fluid tanks) and
---will not consider them an inventory and therefore items will be thrown into the world instead.
---You need to use the robot.use function to interact with those types of blocks.
---
---Note that this will always return false, if the currently selected slot contains no items at all.
--- 
---@param count? integer # Specifies how many items to drop. If omitted or if count exceeds the amount of items in the currently selected slot, then all items in the currently selected slot are dropped.
---@return boolean # `true` if it was able to move at least 1 item.
---@return string? # The reason why it wasn't dropped.
function robot.dropUp(count) end

---Tries to drop or store items from the currently selected inventory slot below the robot.
---
---If the block or entity (like chests or mine-carts with a chest) immediately below the robot has an accessible item inventory,
---the robot will try to put those items into this inventory instead of throwing them into the world.
---If the block below has an inventory but the item could not be moved into it for any reason,
---then this function returns false and does not move any items.
---Where the item will be put on depends on the inventory and the side the robot is facing.
---Furnaces for example receive items to smelt from the top side.
---Also note that robots are considered “blocks with an inventory” as well and
---therefore items can be moved into robot slots as with any other inventory as well.
---
---This function cannot interact with non-item inventories (like for example fluid tanks) and
---will not consider them an inventory and therefore items will be thrown into the world instead.
---You need to use the robot.use function to interact with those types of blocks.
---
---Note that this will always return false, if the currently selected slot contains no items at all.
---
---@param count? integer # Specifies how many items to drop. If omitted or if count exceeds the amount of items in the currently selected slot, then all items in the currently selected slot are dropped.
---@return boolean # `true` if it was able to move at least 1 item.
---@return string? # The reason why it wasn't dropped.
function robot.dropDown(count) end

---Tries to pick up items from directly in front the robot and puts it into the selected slot or (if occupied) first possible slot.
---
---This is basically the inverse of robot.drop and will interact with item inventories in the same way.
---However this will only take the first item available in that inventory.
---For more precise inventory management you need to install an inventory controller upgrade into the robot.
---
---If there are multiple items in front of the robot, this will pick them up based on the distance to the robot.
---This will skip items that cannot be picked up for whatever reason and try other items first before returning false.
---
---If the currently selected slot contains a different item than the one the robot tries to pick up,
---the robot will attempt to place the item in the next possible slots after the selected one that are
---either free or contain identical items with less than the maximum stack size for those items.
---This will distribute the items to pick up over several slots if necessary.
---If no slot after the selected one is able to contain the items the robot tries to put up,
---this function will fail, even if there are slots before the currently selected slot that could hold those items.
---
---@param count? integer # Limits the amount of items to pick up by this many. If omitted a maximum of one stack is taken.
---@return integer|false # The amount of items sucked up or false.
function robot.suck(count) end

---Tries to pick up items from directly over the robot and puts it into the selected slot or (if occupied) first possible slot.
---
---This is basically the inverse of robot.drop and will interact with item inventories in the same way.
---However this will only take the first item available in that inventory.
---For more precise inventory management you need to install an inventory controller upgrade into the robot.
---
---If there are multiple items in over of the robot, this will pick them up based on the distance to the robot.
---This will skip items that cannot be picked up for whatever reason and try other items first before returning false.
---
---If the currently selected slot contains a different item than the one the robot tries to pick up,
---the robot will attempt to place the item in the next possible slots after the selected one that are
---either free or contain identical items with less than the maximum stack size for those items.
---This will distribute the items to pick up over several slots if necessary.
---If no slot after the selected one is able to contain the items the robot tries to put up,
---this function will fail, even if there are slots before the currently selected slot that could hold those items.
---
---@param count? integer # Limits the amount of items to pick up by this many. If omitted a maximum of one stack is taken.
---@return integer|false # The amount of items sucked up or false.
function robot.suckUp(count) end

--- Tries to pick up items from directly under the robot and puts it into the selected slot or (if occupied) first possible slot.
---
---This is basically the inverse of robot.drop and will interact with item inventories in the same way.
---However this will only take the first item available in that inventory.
---For more precise inventory management you need to install an inventory controller upgrade into the robot.
---
---If there are multiple items in under of the robot, this will pick them up based on the distance to the robot.
---This will skip items that cannot be picked up for whatever reason and try other items first before returning false.
---
---If the currently selected slot contains a different item than the one the robot tries to pick up,
---the robot will attempt to place the item in the next possible slots after the selected one that are
---either free or contain identical items with less than the maximum stack size for those items.
---This will distribute the items to pick up over several slots if necessary.
---If no slot after the selected one is able to contain the items the robot tries to put up,
---this function will fail, even if there are slots before the currently selected slot that could hold those items.
---
---@param count? integer # Limits the amount of items to pick up by this many. If omitted a maximum of one stack is taken.
---@return integer|false # The amount of items sucked up or false.
function robot.suckDown(count) end

---Tries to place the block in the currently selected inventory slot in front of the robot.
---
---A robot can only place blocks to the side of another solid block,
---they cannot place blocks “into the air” without an Angel upgrade.
---This can be changed in the config file.
---
---Note that trying to place an empty inventory slot will always fail.
--- 
---@param side? integer # If specified this determines the surface on which the robot attempts to place the block for example to place torches to a specific side. If omitted the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # If set to true the robot will simulate a sneak-placement (like if the player would be using shift during placement), which is usually not necessary and only included for compatibility to other mods.
---@return boolean # `true` if an item could be placed, false otherwise.
---@return string? # Describes why the placement failed if it failed.
function robot.place(side, sneaky) end

---Tries to place the block in the currently selected inventory slot over of the robot.
---
---A robot can only place blocks to the side of another solid block, they cannot place blocks “into the air” without an Angel upgrade. This can be changed in the config file.
---
---Note that trying to place an empty inventory slot will always fail.
--- 
---@param side? integer # If specified this determines the surface on which the robot attempts to place the block for example to place torches to a specific side. If omitted the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # If set to true the robot will simulate a sneak-placement (like if the player would be using shift during placement), which is usually not necessary and only included for compatibility to other mods.
---@return boolean # `true` if an item could be placed, false otherwise.
---@return string? # describes why the placement failed if it failed.
function robot.placeUp(side, sneaky) end

---Tries to place the block in the currently selected inventory slot under of the robot.
---
---A robot can only place blocks to the side of another solid block, they cannot place blocks “into the air” without an Angel upgrade. This can be changed in the config file.
---
---Note that trying to place an empty inventory slot will always fail.
--- 
---@param side? integer # If specified this determines the surface on which the robot attempts to place the block for example to place torches to a specific side. If omitted the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # If set to true the robot will simulate a sneak-placement (like if the player would be using shift during placement), which is usually not necessary and only included for compatibility to other mods.
---@return boolean # `true` if an item could be placed, false otherwise.
---@return string? # describes why the placement failed if it failed.
function robot.placeDown(side, sneaky) end


---Checks the durability of the currently equipped tool
---
---If no item is equipped or the item has no durability this returns nil and an error message describing why no durability could be returned.
--- 
---The error message is one of `no tool equipped` or `tool cannot be damaged`.
--- 
---@return number|nil # The tool's durability of the equipped tool
---@return string? # the current durability of the equipped or an error message
function robot.durability() end

---Makes the robot use the item currently in the tool slot against the block or space
---immediately in front of the robot in the same way as if a player would make a left-click.
---
---This can be used to mine blocks or fight entities in the same way as if the player did a left-click.
---Note that tools and weapons do lose durability in the same way as if a player would use them and need to be replaced eventually.
---Items mined or dropped of mobs will be put into the inventory if possible, otherwise they will be dropped to the ground.
---
---Note that even though the action is performed immediately (like a block being destroyed)
---this function will wait for a while appropriate to the action performed to simulate
---the time it would take a player to do the same action.
---This is most noticeable if you try to mine obsidian blocks:
---they are destroyed and put into the inventory immediately,
---but the function will wait for a few seconds.
---
---If this is used to mine blocks, then the tool equipped needs to be sufficient to actually mine the block in front.
---If for example a wooden pick-axe is used on an obsidian block this will return false.
---Everything (including an empty slot) can be used to fight mobs, but the damage will be based on the item used.
---Equally everything can be used to extinguish fire, and items with durability will not lose any if done so.
---
---@param side? integer # If given the robot will try to 'left-click' only on the surface as specified by side, otherwise the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # Simulates a shift-left click operation if specified.
---@return boolean # `true` if the robot could interact with the block or entity in front of it, `false` otherwise.
---@return "entity"|"block"|"fire" # If successful the secondary parameter describes what the robot interacted with and will be one of 'entity', 'block' or 'fire'.
function robot.swing(side, sneaky) end

---Makes the robot use the item currently in the tool slot against the block or space
---immediately over the robot in the same way as if a player would make a left-click.
---
---This can be used to mine blocks or fight entities in the same way as if the player did a left-click.
---Note that tools and weapons do lose durability in the same way as if a player would use them and need to be replaced eventually.
---Items mined or dropped of mobs will be put into the inventory if possible, otherwise they will be dropped to the ground.
---
---Note that even though the action is performed immediately (like a block being destroyed)
---this function will wait for a while appropriate to the action performed to simulate
---the time it would take a player to do the same action.
---This is most noticeable if you try to mine obsidian blocks:
---they are destroyed and put into the inventory immediately,
---but the function will wait for a few seconds.
---
---If this is used to mine blocks, then the tool equipped needs to be sufficient to actually mine the block over it.
---If for example a wooden pick-axe is used on an obsidian block this will return false.
---Everything (including an empty slot) can be used to fight mobs, but the damage will be based on the item used.
---Equally everything can be used to extinguish fire, and items with durability will not lose any if done so.
---
---@param side? integer # If given the robot will try to 'left-click' only on the surface as specified by side, otherwise the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # Simulates a shift-left click operation if specified.
---@return boolean # `true` if the robot could interact with the block or entity over it, `false` otherwise.
---@return 'entity'|'block'|'fire' # If successful the secondary parameter describes what the robot interacted with and will be one of 'entity', 'block' or 'fire'.
function robot.swingUp(side, sneaky) end

---Makes the robot use the item currently in the tool slot against the block or space
---immediately under the robot in the same way as if a player would make a left-click.
---
---This can be used to mine blocks or fight entities in the same way as if the player did a left-click.
---Note that tools and weapons do lose durability in the same way as if a player would use them and need to be replaced eventually.
---Items mined or dropped of mobs will be put into the inventory if possible, otherwise they will be dropped to the ground.
---
---Note that even though the action is performed immediately (like a block being destroyed)
---this function will wait for a while appropriate to the action performed to simulate
---the time it would take a player to do the same action.
---This is most noticeable if you try to mine obsidian blocks:
---they are destroyed and put into the inventory immediately,
---but the function will wait for a few seconds.
---
---If this is used to mine blocks, then the tool equipped needs to be sufficient to actually mine the block under it.
---If for example a wooden pick-axe is used on an obsidian block this will return false.
---Everything (including an empty slot) can be used to fight mobs, but the damage will be based on the item used.
---Equally everything can be used to extinguish fire, and items with durability will not lose any if done so.
--- 
---@param side? integer # If given the robot will try to 'left-click' only on the surface as specified by side, otherwise the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # Simulates a shift-left click operation if specified.
---@return boolean # `true` if the robot could interact with the block or entity under it, `false` otherwise.
---@return "entity"|"block"|"fire" # If successful the secondary parameter describes what the robot interacted with and will be one of 'entity', 'block' or 'fire'.
function robot.swingDown(side, sneaky) end

---Attempts to use the item currently equipped in the tool slot in the same way as if the player would make a right-click.
---
---This function has a very broad use as the robot can simulate right-clicks with most items.
---The only difference to players is that the robot cannot use itemsthat specifically
---require the user to be an entity as the robot is a block. So drinking potions,
---eating food or throwing an ender pearl will fail.
---
---This functions secondary return value can be used to determine what the result of the right-click caused.
---Which of the item results is returned is not always obvious and requires some testing beforehand.
---Also note that while robots are not affected by harmful potions they can be destroyed by explosions,
---so be careful when you place, throw or activate any form of explosives with this function.
---
---Possible values for the second return value:
---* `block_activated` - a block was activated (like levers, switches or doors).
---* `item_interacted` - the equipped tool interacted with the world, for example sheers when used on a sheep.
---* `item_placed` - something was placed into the world. This is not only caused by placeable blocks, but as well by items that cause blocks or entities to appear in the world (like flint and stone or mob eggs).
---* `item_used` - the equipped was activated, like a splash-potion.
---* `air` - the equipped item requires a target but there was none. Note that if your robot has an Angel upgrade, this will never be returned, however some actions might still cause no effect.
---
---@param side? integer # If given the robot will try to 'right-click' only on the surface as specified by side, otherwise the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # If set to true the robot will simulate a sneak-right-click (like if the player would be using shift during a right-click). Some items (like buckets) will behave differently if this is set to true.
---@param duration? number # How long the item is used. This is useful when using charging items like a bow.
---@return boolean # True if the robot could interact with the block or entity in front of it, false otherwise.
---@return "blockactivated"|"itemplaced"|"iteminteracted"|"itemused"? # If successful the secondary parameter describes what the robot interacted with.
function robot.use(side, sneaky, duration) end

---Attempts to use the item currently equipped in the tool slot in the same way as if the player would make a right-click upwards.
---
---This function has a very broad use as the robot can simulate right-clicks with most items.
---The only difference to players is that the robot cannot use items that specifically require the user to be an entity as the robot is a block.
---So drinking potions, eating food or throwing an ender pearl will fail.
---
---This functions secondary return value can be used to determine what the result of the right-click caused.
---Which of the item results is returned is not always obvious and requires some testing beforehand.
---Also note that while robots are not affected by harmful potions they can be destroyed by explosions,
---so be careful when you place, throw or activate any form of explosives with this function.
---
---Possible values for the second return value:
---* `block_activated` - a block was activated (like levers, switches or doors).
---* `item_interacted` - the equipped tool interacted with the world, for example sheers when used on a sheep.
---* `item_placed` - something was placed into the world. This is not only caused by placeable blocks, but as well by items that cause blocks or entities to appear in the world (like flint and stone or mob eggs).
---* `item_used` - the equipped was activated, like a splash-potion.
---* `air` - the equipped item requires a target but there was none. Note that if your robot has an Angel upgrade, this will never be returned, however some actions might still cause no effect.
---
---@param side? integer # If given the robot will try to 'right-click' only on the surface as specified by side, otherwise the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # If set to true the robot will simulate a sneak-right-click (like if the player would be using shift during a right-click). Some items (like buckets) will behave differently if this is set to true.
---@param duration? number # How long the item is used. This is useful when using charging items like a bow.
---@return boolean # True if the robot could interact with the block or entity over it, false otherwise.
---@return "blockactivated"|"itemplaced"|"iteminteracted"|"itemused"? # If successful the secondary parameter describes what the robot interacted with.
function robot.useUp(side, sneaky, duration) end


---Attempts to use the item currently equipped in the tool slot in the same way as if the player would make a right-click downwards.
---
---This function has a very broad use as the robot can simulate right-clicks with most items.
---The only difference to players is that the robot cannot use items that specifically require the user to be an entity as the robot is a block.
---So drinking potions, eating food or throwing an ender pearl will fail.
---
---This functions secondary return value can be used to determine what the result of the right-click caused.
---Which of the item results is returned is not always obvious and requires some testing beforehand.
---Also note that while robots are not affected by harmful potions they can be destroyed by explosions,
---so be careful when you place, throw or activate any form of explosives with this function.
---
---Possible values for the second return value:
---* `block_activated` - a block was activated (like levers, switches or doors).
---* `item_interacted` - the equipped tool interacted with the world, for example sheers when used on a sheep.
---* `item_placed` - something was placed into the world. This is not only caused by placeable blocks, but as well by items that cause blocks or entities to appear in the world (like flint and stone or mob eggs).
---* `item_used` - the equipped was activated, like a splash-potion.
---* `air` - the equipped item requires a target but there was none.Note that if your robot has an Angel upgrade, this will never be returned, however some actions might still cause no effect.
---
---@param side? integer # If given the robot will try to 'right-click' only on the surface as specified by side, otherwise the robot will try all possible sides. See the Sides API for a list of possible sides.
---@param sneaky? boolean # If set to true the robot will simulate a sneak-right-click (like if the player would be using shift during a right-click). Some items (like buckets) will behave differently if this is set to true.
---@param duration? number # Now long the item is used. This is useful when using charging items like a bow.
---@return boolean # True if the robot could interact with the block or entity under it, false otherwise.
---@return "block_activated"|"item_placed"|"item_interacted"|"item_used"? # If successful the secondary parameter describes what the robot interacted with.
function robot.useDown(side, sneaky, duration) end


--- @alias moveError "not enough energy"|"impossible move"


---Tries to move the robot forward.
---* `not enough energy` is rarely returned as being low on energy usually causes the robot to shut down beforehand.
---* `impossible move` is kind of a fall-back result and will be returned for example if the robot tries to move into an area of the world that is currently not loaded.
---
---@return boolean # True if the robot successfully moved, nil otherwise.
---@return moveError|detectType? # What prevented the robot form moving.
function robot.forward() end


---Tries to move the robot backwards.
---* `not enough energy` is rarely returned as being low on energy usually causes the robot to shut down beforehand.
---* `impossible move` is kind of a fall-back result and will be returned for example if the robot tries to move into an area of the world that is currently not loaded.
---
---@return boolean # True if the robot successfully moved, nil otherwise.
---@return moveError|detectType? # What prevented the robot form moving.
function robot.back() end


---Tries to move the robot upwards
---* `not enough energy` is rarely returned as being low on energy usually causes the robot to shut down beforehand.
---* `impossible move` is kind of a fall-back result and will be returned for example if the robot tries to move into an area of the world that is currently not loaded.
---
---@return boolean # True if the robot successfully moved, nil otherwise.
---@return moveError|detectType? # What prevented the robot form moving.
function robot.up() end


---Tries to move the robot downwards.
---* `not enough energy` is rarely returned as being low on energy usually causes the robot to shut down beforehand.
---* `impossible move` is kind of a fall-back result and will be returned for example if the robot tries to move into an area of the world that is currently not loaded.
---@return boolean # True if the robot successfully moved, nil otherwise.
---@return moveError|detectType? # What prevented the robot form moving.
function robot.down() end


---Turns the robot 90° to the left.
---Note that this can only fail if the robot has not enough energy to perform the turn but has not yet shut down because of it.
---@return boolean # `true` if success.
function robot.turnLeft() end


---Turns the robot 90° to the right.
---Note that this can only fail if the robot has not enough energy to perform the turn but has not yet shut down because of it.
---@return boolean # `true` if success.
function robot.turnRight() end


---This is the same as calling robot.turnRight twice.
---Note that this can only fail if the robot has not enough energy to perform the turn but has not yet shut down because of it.
---@return boolean # `true` if success.
function robot.turnAround() end


---@deprecated
---Deprecated since OC 1.3 use component.experience.level() instead (only available if the experience upgrade is installed).
---@return number # The current level of the robot, with the fractional part being the percentual progress towards the next level. For example, if this returns 1.5, then the robot is level one, and 50% towards achieving level two.
function robot.level() end


---Returns the number of tanks in the robot.
---@return integer # The number of tanks installed in the robot.
function robot.tankCount() end


---Returns the selected tank or selects a tank and returns the selected tank's number.
---@param tank? integer # the tank to select.
---@return integer # The selected tank.
function robot.selectTank(tank) end


---The the current fluid level in the specified tank, or, if none is specified, the selected tank.
---@param tank? integer # The tank to check.
---@return integer # The current fluid amount in the tank.
function robot.tankLevel(tank) end


---The the remaining fluid capacity in the specified tank, or, if none is specified, the selected tank.
---@param tank? integer # The tank to check.
---@return integer # The current fluid amount in the tank.
function robot.tankSpace(tank) end


---Tests whether the fluid in the selected tank is the same as in the specified tank.
---@param tank integer
---@return boolean
function robot.compareFluidTo(tank) end


---Transfers the specified amount of fluid from the selected tank into the specified tank.
---If no volume is specified, tries to transfer 1000 mB.
---
---@param tank integer # Which tank to transfer to.
---@param count? integer # The amount to transfer.
---@return boolean
function robot.transferFluidTo(tank, count) end


---Tests whether the fluid in the selected tank is the same as in the world or the tank in front of the robot.
---@return boolean
function robot.compareFluid() end


---Tests whether the fluid in the selected tank is the same as in the world or the tank over the robot.
function robot.compareFluidUp() end


---Tests whether the fluid in the selected tank is the same as in the world or the tank under the robot.
function robot.compareFluidDown() end


---Extracts the specified amount of fluid from the world or the tank in front of the robot.
---When no amount is specified, will try to drain 1000 mB.
---When the drained fluid is in the world and it cannot be fully stored in the selected tank,
---the operation fails, i.e. no fluid is lost.
---
---@param count? integer # The amount to transfer.
---@return boolean
function robot.drain(count) end


---Extracts the specified amount of fluid from the world or the tank over the robot.
---When no amount is specified, will try to drain 1000 mB.
---When the drained fluid is in the world and it cannot be fully stored in the selected tank,
---the operation fails, i.e. no fluid is lost.
---
---@param count? integer # The amount to transfer.
---@return boolean
function robot.drainUp(count) end


---Extracts the specified amount of fluid from the world or the tank under the robot.
---When no amount is specified, will try to drain 1000 mB.
---When the drained fluid is in the world and it cannot be fully stored in the selected tank,
---the operation fails, i.e. no fluid is lost.
---
---@param count? integer # The amount to transfer.
---@return boolean
function robot.drainDown(count) end

---Injects the specified amount of fluid from the selected tank into the the world or the tank in front of the robot.
---When no amount is specified, will try to eject 1000 mB. When there is not enough fluid to fill a block,
---or the target tank does not have enough room, the operation fails, i.e. no fluid is lost.
---
---@param count? integer # The amount to transfer.
---@return boolean
function robot.fill(count) end

---Injects the specified amount of fluid from the selected tank into the the world or the tank over the robot.
---When no amount is specified, will try to eject 1000 mB. When there is not enough fluid to fill a block,
---or the target tank does not have enough room, the operation fails, i.e. no fluid is lost.
---
---@param count? integer # The amount to transfer.
---@return boolean
function robot.fillUp(count) end

---Injects the specified amount of fluid from the selected tank into the the world or the tank under the robot.
---When no amount is specified, will try to eject 1000 mB. When there is not enough fluid to fill a block,
---or the target tank does not have enough room, the operation fails, i.e. no fluid is lost.
---
---@param count? integer # The amount to transfer.
---@return boolean
function robot.fillDown(count) end

return robot