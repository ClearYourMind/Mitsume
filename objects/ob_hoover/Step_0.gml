/// @desc Find ob_hero
var oX = x-16

if collision_rectangle(oX, y - yRange * 0.5,
					   oX + xRange * forward, 
					   y + yRange * 0.5,
					   ob_heroparent, false, false) {
	hero.x -= flowSpeed * dTime * forward
}

