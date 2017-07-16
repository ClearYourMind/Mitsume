/// @desc Checks collision using masks
/// @arg obj to check collision with
/// @arg dir where to check

/// For ob_moving
if not object_is_ancestor(object_index, ob_moving)
	exit
	
var obj = argument0
var dir = argument1

if object_is_ancestor(obj.object_index, ob_moving) {
	return sc_check_collision_mask_moving(obj, dir)
} else
	return sc_check_collision_mask_wall(obj, dir)

