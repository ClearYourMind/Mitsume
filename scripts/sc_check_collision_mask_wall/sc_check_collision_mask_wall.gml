/// @desc Check coll against static objects
/// @arg obj to check collsion with
/// @arg dir where to check

var _x = x
var _y = y
var obj = argument0
var dir = argument1
var result = false

switch dir {
case d.Up:
	mask_index = sp_hero_collision_top
	if place_meeting(_x-dX, _y-dY, obj) {
		_y -=  (_y-h1) - other.bbox_bottom - 1
		speedY = 0
		dY = 0
		result = true
	}
	break
case d.Down:
	mask_index = sp_hero_collision_bottom
	if place_meeting(_x-dX, _y, obj) {
		_y -=  (_y+h2) - other.bbox_top //+ 0.5
		speedY = 0
		dY = 0
		result = true
	}
	break
case d.Right:
	mask_index = sp_hero_collision_right
	if place_meeting(_x, _y-dY, obj) {
		_x -=  (_x+w2) - other.bbox_left + 0.51// 0.91
		speedX = 0
		dX = 0
		result = true
	}
	break
case d.Left:
	mask_index = sp_hero_collision_left
	if place_meeting(_x, _y-dY, obj) {
		_x -= (_x-w1) - other.bbox_right - 0.51
		speedX = 0
		dX = 0
		result = true
	}
	break
}

x = _x
y = _y

return result
