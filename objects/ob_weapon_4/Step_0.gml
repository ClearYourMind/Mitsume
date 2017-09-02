if not instance_exists(hero)
	exit
	
if not initiated {
	staminaReq = hero.staminaMax
}
event_inherited()
/// @desc Shooting

if canShoot {
	reloaded = false
	sc_play_sound(sn_fire, false)
	with instance_create_depth(hero.x + 5*hero.forward, hero.y-5, depth, shotObject) {
		accelX = accelX * hero.forward
		speedX = maxspeedX*0.075 * hero.forward
		image_index = other.image_index
	}
}

