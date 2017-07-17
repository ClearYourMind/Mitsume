/// @desc Draw debug info

draw_self()

if not instance_exists(hero)
	exit
	
if debug {
	if point_distance(x, y, hero.x, hero.y) <= range {
		if found
			draw_set_color(c_lime)
		else
			draw_set_color(c_red)
	
		draw_line(x, y-20, hero.x, hero.y)
		draw_set_color(c_white)
	}
}
