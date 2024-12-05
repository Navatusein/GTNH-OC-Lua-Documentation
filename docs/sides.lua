---@meta "sides"

---@class sides
local sides = {}

-- lookups
sides[0] = "bottom"
sides[1] = "top"
sides[2] = "back"
sides[3] = "front"
sides[4] = "right"
sides[5] = "left"
sides[6] = "unknown"

-- cardinal
sides.north = 2
sides.south = 3
sides.west = 4
sides.east = 5

-- directional
sides.bottom = 0
sides.down = 0
sides.up = 1
sides.top = 1
sides.back = 2
sides.front = 3
sides.forward = 3
sides.right = 4
sides.left = 5

-- axis
sides.negx = 4
sides.posy = 1
sides.negz = 2
sides.posx = 5
sides.negy = 0
sides.posz = 3

sides.unknown = 6

return sides