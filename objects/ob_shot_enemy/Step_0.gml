event_inherited()
/// @desc check collision and toDestroy

if collision_point(x, y, ob_wall,        false, false) or
   collision_point(x, y, ob_motion_wall, false, false)
    instance_destroy()


if toDestroy
	instance_destroy()
