/// @desc Check collision without mask switching
/// @arg object to check

// result = [bool, bool]

// of ob_moving
if not object_is_ancestor(object_index, ob_moving)
	exit


var result = [false, false] 
var obj = argument0

if place_meeting(x+hspeed, y+vspeed, obj) {
	if place_meeting(x+hspeed, y, obj) {
		result[0] = true
		hspeed = 0 
	}
	if place_meeting(x, y+vspeed, obj) {
		result[1] = true
		vspeed = 0 
	}
	if result[0] = false and result[1] = false {
		result = [true,  true]
		hspeed = 0
		vspeed = 0
	}
}

return result
