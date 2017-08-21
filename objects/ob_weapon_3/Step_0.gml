event_inherited()
/// @desc Process timeout

if not instance_exists(hero)
	exit

if canShoot {

	sc_timeout_stop(resetTime)
	
	reloaded = false
	sc_play_sound(sn_shot, false)
	with instance_create_depth(hero.x, hero.y-7, depth, ob_shot_3) {
		speedX = maxspeedX * cos( degtorad(other.angle) ) * hero.forward
		speedY = maxspeedX * sin( degtorad(other.angle) )
	}
	angle += dAngle
	if abs(angle) > aRange {
		angle = aRange * sign(angle)
		dAngle = -dAngle
	}
}

if not canShoot {
	if not sc_timeout_is_started(resetTime)
		sc_timeout_start(resetTime)
	if sc_timeout_over(resetTime) {
		angle = 0
		dAngle = -5
	}
}
