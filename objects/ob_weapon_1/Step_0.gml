/// @desc Process timeout

if shoot {
	if sc_timeout_over(reloadTime) {
		sc_play_sound(sn_shot, false)
		with instance_create_depth(hero.x, hero.y-7, -1, ob_shot_1)
			speedX = maxspeedX * hero.forward
	}
	
}

