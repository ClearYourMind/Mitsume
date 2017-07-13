/// @desc Returns [x,y] array of distances where collision will occur
/// @arg Object to check collision with

// check for collision for ob_moving AHEAD

var obj = argument0

if not instance_exists(obj) exit

// check if object is ancestor of "ob_moving"
if not object_is_ancestor(object_index, ob_moving) exit

// if there IS collision ALREADY, exit script
if place_meeting(x, y, obj) {
	return -1
}

var _dx = dX + sign(dX)
var _dy = dY + sign(dY)
var result = [0, 0]
var step = 0.05

if place_meeting(x+_dx, y, obj) 
	result[0] = _dx
if place_meeting(x, y+_dy, obj)
	result[1] = _dy

if abs(result[0])>0 {
	while place_meeting(ceil(x+_dx), y, obj) {
			_dx -= step*sign(_dx)
	}
	result[0] = _dx	
}
if abs(result[1])>0 {
	while place_meeting(x, ceil(y+_dy), obj) {
			_dy -= step*sign(_dy)
	}
	result[1] = _dy	
}
//if result == [0, 1] {
//	for (var i=0; i<abs(_dy); i+=step)
//	if place_meeting(x, y+(i+step)*sign(_dy), obj) {
//		return [0, i*sign(_dy)]
//	}
//}
//if result == [1, 1] {
	
//}

return result
