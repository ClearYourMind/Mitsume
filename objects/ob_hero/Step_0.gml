/// @desc Control & Collision

sc_hero_control()

event_inherited()

var xy = sc_check_collision_ahead(ob_wall)

if is_array(xy) {
	debugstr = string(xy[0]) + "; " + string(xy[1])
	if abs(xy[0])>=0 {
		accelX = 0
		dX = 0
//		speedX = 0
	}
	if abs(xy[1])>=0 {
		accelY = 0
		dY = 0
//		y -= xy[1]
//		speedX = 0
	}
}


x += dX
y += dY

