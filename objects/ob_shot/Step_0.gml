event_inherited()
/// @desc Check collision

var prev = mask_index
mask_index = noone

if collision_point(x, y, ob_wall,        false, false) or
   collision_point(x, y, ob_motion_wall, false, false)
	instance_destroy()

mask_index = prev
