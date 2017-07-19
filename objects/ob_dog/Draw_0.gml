event_inherited()
/// @desc Draw debug info

if debug {
	if not instance_exists(hero)
		exit
	var xDist = abs(x - hero.x)
	var yDist = abs(y - hero.y)
	if (xDist <= xRange) and (yDist <= yRange) {
		if found
			draw_set_color(c_lime)
		else
			draw_set_color(c_red)
	
		draw_line(x, y-20, hero.x, hero.y)
		draw_set_color(c_white)
	}
}
