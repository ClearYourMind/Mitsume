event_inherited()
/// @desc Check collision ahead, Timers

if (place_meeting(x, y, ob_wall) or
    place_meeting(x, y, ob_motion_wall)) and not flashing 
	lifeTime = sc_timeout_new(fadeTime)

var result1 = sc_check_collision(ob_wall)
var result2 = sc_check_collision(ob_motion_wall)
var result = [result1[0] or result2[0], result1[1] or result2[1]]


if result[0] {
	forward = -forward
	speedX = oSpeedX * forward
}

if result[1] {
	// hit against floor
	if speedY > 0 {
		if instance_exists(hero)
		if hero.hasMagnet {
			forward = sign(hero.x - x)
			speedX = oSpeedX * forward * 1.5
		} else
			speedX = oSpeedX * forward
		speedY = -speedY
		if abs(speedY) > minspeedY
			speedY *= 0.9
		else
			speedY = -minspeedY*0.9
	} else
	// hit against ceiling
		if speedY < 0 
			speedY = 40
}


#region /// Processing timers

if sc_timeout_over(lifeTime) {
	if not flashing {
		flashing = true
		lifeTime = sc_timeout_new(fadeTime)
		sc_timeout_start(lifeTime)
	} else
		instance_destroy()
}

#endregion
