/// @desc Checks collision using masks
/// @arg Object to check collision with

/// @desc Bounce against
var _x = x
var _y = y
var obj = argument0

mask_index = sp_hero_collision_top
if place_meeting(_x-dX, _y, obj) {
	while place_meeting(_x-dX, _y, obj) _y++   
	speedY = 0
	accelY = 0
	dY = 0
}

mask_index = sp_hero_collision_bottom
if place_meeting(_x-dX, _y, obj) {
	while place_meeting(_x-dX, _y, obj) _y--   
	_y += 1
	grav = 0
	speedY = 0
	accelY = 0
	dY = 0
	feetcollision = true
}

mask_index = sp_hero_collision_right
if place_meeting(_x, _y-dY, obj) {
	while place_meeting(_x, _y-dY, obj) _x--   
	speedX = 0
	accelX = 0
	dX = 0
}

mask_index = sp_hero_collision_left
if place_meeting(_x, _y-dY, obj) {
	while place_meeting(_x, _y-dY, obj) _x++   
	speedX = 0
	accelX = 0
	dX = 0
}

mask_index = sp_hero_stand
x = _x
y = _y
