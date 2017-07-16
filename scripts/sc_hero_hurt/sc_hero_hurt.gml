// @desc Hurt

if not (recover or hurt) 
if health > 0 {
	hurt = true
	accelX = 0
	accelY = 0
	if other.x > x
		forward =  1
	if other.x < x
		forward = -1
	
	speedX = -maxspeedX * forward * 0.75
	speedY = -maxspeedX * 2
	y-=dY+2
	sprite_index = sp_hero_hurt
	image_index = 0
	animEnded = false
	health--
	sc_play_sound(sn_hurt, false)
}

