// @desc Hurt

if not (recover or hurt) 
if health > 0 {
	hurt = true
	accelX = 0
	accelY = 0
	
	forward = sign(other.x - x)
	if forward = 0 forward = 1
		
	speedX = -maxspeedX * forward * 0.75
	speedY = -maxspeedX * 2
	y -= vspeed + 2
	sprite_index = sp_hero_hurt
	image_index = 0
	health--
	sc_play_sound(sn_hurt, false)
}

sc_gui_update(hero.guiObject)
