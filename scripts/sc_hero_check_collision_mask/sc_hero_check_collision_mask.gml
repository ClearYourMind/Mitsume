/// @desc Checks collision using masks
/// @arg obj to check collision with
/// @arg dir where to check

/// For ob_moving
if not object_is_ancestor(object_index, ob_moving)
	exit
	
var obj = argument0
var dir = argument1
var result = false

image_xscale = 1

switch dir {
case d.Up:
	mask_index = sp_hero_collision_top
	break
case d.Down:
	mask_index = sp_hero_collision_bottom
	break
case d.Left:
	mask_index = sp_hero_collision_left
	break
case d.Right:
	mask_index = sp_hero_collision_right
	break
}

w1 = round(x - bbox_left)
w2 = round(bbox_right  - x)
h1 = round(y - bbox_top)
h2 = round(bbox_bottom - y)

if object_is_ancestor(obj.object_index, ob_moving) {
	result = sc_check_collision_mask_moving(obj, dir)
} else
	result = sc_check_collision_mask_wall(obj, dir)

image_xscale = forward
mask_index = sp_hero_stand

return result

