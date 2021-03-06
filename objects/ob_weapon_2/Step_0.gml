event_inherited()
/// @desc Process timeout

if not instance_exists(hero)
	exit

if canShoot {
	reloaded = false
	sc_play_sound(sn_shot, false)
	with instance_create_depth(hero.x, hero.y-7, depth, shotObject) {
		angle = -90 + 90*hero.forward
		speedX = maxspeedX * cos( degtorad(angle) ) 
		image_index = other.image_index
	}	
}

if instance_exists(shotObject) {
	if keys[k.Up] {
		with shotObject
			angle -= 2*hero.forward
	}
	if keys[k.Down] {
		with shotObject
			angle += 2*hero.forward
	}
}
