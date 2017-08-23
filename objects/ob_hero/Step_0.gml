/// @desc Control & Check status

mask_index = sp_hero_stand
sc_hero_control()

event_inherited()

feetcollision = false
headcollision = false

/// Check status
if health<=0
	sc_hero_die()

if hurt {
	sprite_index = sp_hero_hurt
	// jump before hero stand up
	if image_index >= 4 and image_index <= 4+image_speed {
		speedY = -maxspeedX 
		y -= vspeed + 2
	}
		
	if animEnded {
		hurt = false
		recover = true
		sc_timeout_start(recoverTime)
	}
}

if stamina < staminaMax {
	if staminaDepleted or not (pauseAnim = after.Shot)
		stamina += staminaRegenSpeed * dTime
} else {
	stamina = staminaMax
	staminaDepleted = false
}

animEnded = false

//debugstr +="\n"
//debugstr += " STAMINA = "+string(stamina)
