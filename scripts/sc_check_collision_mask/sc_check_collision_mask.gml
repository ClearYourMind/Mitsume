/// @desc Checks collision using masks
/// @arg Object to check collision with

/// @desc Bounce against
var _x = x
var _y = y
var obj = argument0
var result = d.None

while true {
	mask_index = sp_hero_collision_top
	if place_meeting(_x-dX, _y, obj) {
		_y -=  bbox_top - other.bbox_bottom - 1
		speedY = 0
		dY = 0
		result = d.Up
		break
	}

	mask_index = sp_hero_collision_bottom
	if place_meeting(_x-dX, _y, obj) {
		_y -=  bbox_bottom - other.bbox_top
		grav = 0
		speedY = 0
		dY = 0
		result = d.Down
		break
	}

	mask_index = sp_hero_collision_right
	if place_meeting(_x, _y-dY, obj) {
		_x -=  bbox_right - other.bbox_left - 0.91
		speedX = 0
		dX = 0
		result = d.Right
		break
	}

	mask_index = sp_hero_collision_left
	if place_meeting(_x, _y-dY, obj) {
		_x -= bbox_left - other.bbox_right - 0.09
		speedX = 0
		dX = 0
		result = d.Left
	}
	break
}

x = _x
y = _y

return result
