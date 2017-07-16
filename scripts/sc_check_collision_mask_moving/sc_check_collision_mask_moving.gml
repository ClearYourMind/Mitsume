/// @desc Check coll against moving objects
/// @arg obj to check collsion with
/// @arg dir where to check

// Mask, according with dir, should be set before

var _x = x
var _y = y
var obj = argument0
var dir = argument1
var result = false

switch dir {
case d.Up:
case d.Right:
case d.Left:
	result = sc_check_collision_mask_wall(obj, dir)
	break
case d.Down:
	if place_meeting(_x-dX, _y, obj) {
		_y -=  (_y+h2) - (other.y-other.h1)
		speedY = 0
		dY = 0
		result = true
	}
	break
}

x = _x
y = _y

return result
