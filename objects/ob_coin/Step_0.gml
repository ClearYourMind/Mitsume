event_inherited()
/// @desc Check collision ahead, Timers
var result = [false, false] 

if place_meeting(x+hspeed, y+vspeed, ob_wall) {
	if place_meeting(x+hspeed, y, ob_wall) {
		result[0] = true
		hspeed = 0 
	}
	if place_meeting(x, y+vspeed, ob_wall) {
		result[1] = true
		vspeed = 0 
	}
	if result[0] = false and result[1] = false {
		result = [true,  true]
		hspeed = 0
		vspeed = 0
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
