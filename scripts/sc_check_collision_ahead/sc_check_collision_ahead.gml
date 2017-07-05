/// @desc Returns [x,y] array of distances where collision will occure
/// @arg Object to check collision with

// check for collision for ob_moving AHEAD

var obj = argument0

if not instance_exists(obj) exit

// check if object is ancestor of "ob_moving"
if not object_is_ancestor(object_index, ob_moving) exit

// if there IS collision ALREADY, exit script
//if place_meeting(x, y, obj) {
//	return [-1, -1]
//}

var _d = hspeed*1.5
if place_meeting(x+_d, y, obj) {
	for (var i=1; i<abs(_d); i++)
	if not place_meeting(x+i*sign(_d), y, obj)
		return [_d, 0]
}

var _d = vspeed*1.5
if place_meeting(x, y+_d, obj) {
	for (var i=1; i<abs(_d); i++)
	if not place_meeting(x, y+i*sign(_d), obj)
		return [0, _d]
}

//if place_meeting(x+hspeed*10, y+vspeed*10, obj) {
//	for (var j=0; abs(j)<vspeed*10; j+=sign(vspeed))
//	for (var i=0; abs(i)<hspeed*10; i+=sign(hspeed))
//	if place_meeting(x+i, y+j, obj)
//		return [i, j]
//}

