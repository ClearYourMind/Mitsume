event_inherited()
/// @desc Process AI

if not instance_exists(hero)
	exit
	
xDist = hero.x - x
yDist = hero.y - y

switch phase {
case 0:
// set initial forward
	initForward = sign(xDist)
	accelX = oAccelX * initForward 
	phase = 1
	break
case 1:
// approaching player
	accelX = oAccelX * forward
	accelY = oAccelY * sign(yDist)
	
	forward = sign(xDist)
	if (forward != initForward) and (abs(xDist) > range) {
		phase = 2
	}
	image_xscale = forward
	break
case 2:
// missed player
	forward = sign(speedX)
	image_xscale = forward
	break
}

if hurt {
	speedX += (50 * -xDist)
		
}



