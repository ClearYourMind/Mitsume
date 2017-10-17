/// @desc Find ob_hero
var oX = x-16
var oY = y-16

if collision_rectangle(oX, oY, oX + xRange * forward, oY + yRange, ob_heroparent, false, false) {
	hero.x -= suckSpeed * dTime * forward
}

