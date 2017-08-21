event_inherited()
/// @desc Process timeout

if not instance_exists(hero)
	exit

if canShoot {
	reloaded = false
	sc_play_sound(sn_shot, false)
	with instance_create_depth(hero.x, hero.y-7, depth, shotObject)
		speedX = maxspeedX * hero.forward
}

