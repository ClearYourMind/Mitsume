/// @desc Process timeout

if hero.hurt
	shoot = false

if shoot {

	sc_timeout_stop(resetTime)
	
	if sc_timeout_over(reloadTime) {
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
}

if not shoot {
	if not sc_timeout_is_started(resetTime)
		sc_timeout_start(resetTime)
	if sc_timeout_over(resetTime) {
		angle = 0
		dAngle = -5
	}
}
