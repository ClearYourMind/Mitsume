/// @desc Returns [x,y] array of distances where collision will occur
/// @arg Object to check collision with

// check for collision for ob_moving AHEAD

var obj = argument0

if not instance_exists(obj) exit

// check if object is ancestor of "ob_moving"
if not object_is_ancestor(object_index, ob_moving) exit

// if there IS collision ALREADY, exit script
if place_meeting(x, y, obj) {
	return 0
}

//var result = [0,0]
var _dx = dX + sign(dX)
var _dy = dY + sign(dY)
if place_meeting(x+_dx, y+_dy, obj) {
	for (var j=0; j<abs(_dy); j++)
	for (var i=0; i<abs(_dx); i++)
	if place_meeting(x+i*sign(_dx), y+j*sign(_dy), obj)
		return [_dx, _dy]
}

var _d = dX + sign(dX)   // + 1 pixel
if place_meeting(x+_d, y, obj) {
	for (var i=0; i<abs(_d); i++)
	if place_meeting(x+i*sign(_d), y, obj)
		return [_d, 0]
}

var _d = dY + sign(dY)   // + 1 pixel
if place_meeting(x, y+_d, obj) {
	for (var i=0; i<abs(_d); i++)
	if place_meeting(x, y+i*sign(_d), obj)
		return [0, _d]
}

