// @desc Hurt

if not (recover or hurt) {
	forward = sign(other.x - x)
	if forward = 0 forward = 1
	if health > 1 {
		hurt = true
		accelX = 0
		accelY = 0
	
		speedX = -maxspeedX * forward * 0.75
		speedY = -maxspeedX * 2
		y -= vspeed + 2
		health--
		sc_gui_update(hero.guiObject)
		instance_change(ob_hero_hurt, false)
		sc_play_sound(sn_hurt, false)
	} else {
		sc_hero_die_lay()
	}
}
