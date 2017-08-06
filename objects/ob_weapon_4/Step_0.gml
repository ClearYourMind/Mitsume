/// @desc Process timeout

if hero.hurt
	shoot = false

if shoot {
	if sc_timeout_over(reloadTime) {
		sc_play_sound(sn_shot, false)
		with instance_create_depth(hero.x, hero.y-7, depth, shotObject)
			speedX = maxspeedX * hero.forward
	}
	
}

