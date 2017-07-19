/// @desc Process timeout

if not shoot
	_reloadTime = 0
	
if shoot {
	if _reloadTime <= 0 {
		_reloadTime = reloadTime
		sc_play_sound(sn_shot, false)
		with instance_create_depth(hero.x, hero.y-7, -1, ob_shot_1)
			speedX = maxspeedX * hero.forward
	}
	
}

if _reloadTime > 0
	_reloadTime -= dTime

