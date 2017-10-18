event_inherited()
/// @desc

switch phase {
case 0:
	if (counter mod 3 == 0) {
		x = oX + random(2) - 1
		image_index = irandom(3)
	}
	if sc_timeout_over(fallTime) {
		phase = 1
		image_index = 0
		grav = oGrav
		x = oX
	}
	break
case 1:
	var _wall = sc_check_collision(ob_wall)
	var _mwall = sc_check_collision(ob_motion_wall)

	collisionResult = [_wall[0] or _mwall[0], _wall[1] or _mwall[1]]
	if collisionResult[1]
		instance_destroy()
}

/// check if outside

if not point_in_rectangle(x, y, view_x, view_y, view_x+view_w, view_y+view_h)
	instance_destroy(id, false)
