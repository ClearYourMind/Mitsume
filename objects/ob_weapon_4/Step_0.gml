event_inherited()
/// @desc Process timeout

if shoot {
	if reloaded {
		reloaded = false
		sc_play_sound(sn_shot, false)
		with instance_create_depth(hero.x, hero.y-7, depth, shotObject)
			speedX = maxspeedX * hero.forward
	}
	
}

