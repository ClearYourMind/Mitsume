/// @desc Control & Collision

sc_hero_control()

var xy = sc_check_collision_ahead(ob_wall)

if is_array(xy) {
	debugstr = string(xy[0]) + "; " + string(xy[1])
	if xy[0]>=0 {
		accelX = 0
		speedX = 0
		hspeed = 0
		//x += xy[0]
	}
}

event_inherited()

