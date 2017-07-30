/// @desc Process timeout

if hero.hurt
	shoot = false

if shoot {
	if sc_timeout_over(reloadTime) {
		sc_play_sound(sn_shot, false)
		with instance_create_depth(hero.x, hero.y-7, depth, shotObject) {
			angle = -90 + 90*hero.forward
			speedX = maxspeedX * cos( degtorad(angle) ) 
		}
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
