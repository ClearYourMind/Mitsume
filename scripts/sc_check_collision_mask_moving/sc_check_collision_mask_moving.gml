/// @desc Check coll against moving objects
/// @arg obj to check collsion with
/// @arg dir where to check

// Mask, according with dir, should be set before

var _x = x
var _y = y
var obj = argument0
var _other = noone
var dir = argument1
var result = false

_other = instance_place(_x, _y, obj)

switch dir {
case d.Up:
//	_other = instance_place(_x-hspeed, _y, obj)
	if instance_exists(_other) {
		_y -=  (_y-h1) - (_other.y+_other.h2) - 1
		speedY = 0
		vspeed = 0
		result = true
	}
	break
case d.Right:
//	_other = instance_place(_x, _y-vspeed, obj)
	if instance_exists(_other) {
		_x -=  (_x+w2) - (_other.x-_other.w1) + 0.51
		speedX = 0
		hspeed = 0
		result = true
	}
	break
case d.Left:
//	_other = instance_place(_x, _y-vspeed, obj)
	if instance_exists(_other) {
		_x -=  (_x-w1) - (_other.x+_other.w2) - 0.51
		speedX = 0
		hspeed = 0
		result = true
	}
	break
case d.Down:
	//_other = instance_place(_x-hspeed, _y, obj)
	if instance_exists(_other) {
		_y -=  (_y+h2) - (_other.y-_other.h1)
		speedY = 0
		vspeed = 0
		result = true
	}
	break
}

x = _x
y = _y

return result
