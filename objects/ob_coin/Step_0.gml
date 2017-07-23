event_inherited()
/// @desc Check collision ahead, Timers
var result = [false, false] // reverse values for speedX, speedY

if place_meeting(x+dX, y+dY, ob_wall) {
	if place_meeting(x+dX, y, ob_wall) {
		result[0] = true
		dX = 0 
	}
	if place_meeting(x, y+dY, ob_wall) {
		result[1] = true
		dY = 0 
	}
	if result[0] = false and result[1] = false {
		result = [true,  true]
		dX = 0
		dY = 0
	}
}

if result[0] {
	speedX = -speedX
	oSpeedX = speedX
}

if result[1] {
	// hit against floor
	if speedY > 0 {
		speedY = -speedY
		speedX = oSpeedX
		if abs(speedY) > minspeedY
			speedY *= 0.9
		else
			speedY = -minspeedY*0.9
	} else
	// hit against ceiling
		if speedY < 0 
			speedY = 40
}


// timers processing
if sc_timeout_over(lifeTime) {
	if not flashing {
		flashing = true
		lifeTime = sc_timeout_new(fadeTime)
		sc_timeout_start(lifeTime)
	} else
		instance_destroy()
}
