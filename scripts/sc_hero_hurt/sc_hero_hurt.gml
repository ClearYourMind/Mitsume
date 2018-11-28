// @desc Hurt

if not (recover or hurt) {
	// release arrow
	if instance_exists(ob_arrow) {
	    if (ob_arrow.phase = ar.Appear) or (ob_arrow.phase = ar.Recall)
			ob_arrow.phase = ar.Disappear
	    if ob_arrow.phase = ar.Hold
	        ob_arrow.phase = ar.LaunchBegin
	}
	
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
		image_index = 0
		sc_gui_update(hero.guiObject)
		instance_change(ob_hero_hurt, false)
		sc_play_sound(sn_hurt, false)
	} else {
		sc_hero_die_lay()
	}
}
