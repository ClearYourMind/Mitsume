event_inherited()
/// @desc Check collision ahead, Timers

if (place_meeting(x, y, ob_wall) or
    place_meeting(x, y, ob_motion_wall)) and not flashing 
	lifeTime = sc_timeout_new(fadeTime)

var result1 = sc_check_collision(ob_wall)
var result2 = sc_check_collision(ob_motion_wall)
var result = [result1[0] or result2[0], result1[1] or result2[1]]


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
#region

if sc_timeout_over(lifeTime) {
	if not flashing {
		flashing = true
		lifeTime = sc_timeout_new(fadeTime)
		sc_timeout_start(lifeTime)
	} else
		instance_destroy()
}

#endregion