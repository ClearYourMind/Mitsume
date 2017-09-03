///@desc Enemy watching behaviour

if not instance_exists(hero)
	exit

xDist = hero.x - x
yDist = hero.y - y

found = false

if (abs(xDist) <= xRange) and (abs(yDist) <= yRange) {
	found = ( collision_line(x, y-20, hero.x, hero.y , hero, false, true) and
			  not collision_line(x, y-20, hero.x, hero.y , ob_wall, false, true) )
}

