/// @desc Check coll against static objects
/// @arg obj to check collsion with
/// @arg dir where to check

// Mask, according with dir, should be set before

var _x = x
var _y = y
var obj = argument0
var _other = noone
var dir = argument1
var result = false

switch dir {
case d.Up:
	_other = instance_place(_x-hspeed, _y, obj)
	if instance_exists(_other) {
		_y -=  (_y-h1) - _other.bbox_bottom - 1
		speedY = 0
		vspeed = 0
		result = true
	}
	break
case d.Down:
	_other = instance_place(_x-hspeed, _y, obj)
	if instance_exists(_other) {
		_y -=  (_y+h2) - _other.bbox_top //+ 0.5
		speedY = 0
		vspeed = 0
		result = true
	}
	break
case d.Right:
	_other = instance_place(_x, _y-vspeed, obj)
	if instance_exists(_other) {
		_x -=  (_x+w2) - _other.bbox_left + 0.51// 0.91
		speedX = 0
		hspeed = 0
		result = true
	}
	break
case d.Left:
	_other = instance_place(_x, _y-vspeed, obj)
	if instance_exists(_other) {
		_x -= (_x-w1) - _other.bbox_right - 0.51
		speedX = 0
		hspeed = 0
		result = true
	}
	break
}

x = _x
y = _y

return result
