/// @desc Control & Check status

mask_index = sp_hero2_stand
sc_hero2_control()

event_inherited()


/// Check status
// squeeze
//if (feetcollision and headcollision) or
if  (leftcollision and rightcollision) {
	sc_hero_die()
	exit
}

if health<=0 {
	sc_hero_die()
	exit
}

if hurt {
	sprite_index = sp_hero2_hurt
		
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

//debugstr +="\n"
//debugstr += " STAMINA = "+string(stamina)

feetcollision = false
headcollision = false
leftcollision = false
rightcollision = false

animEnded = false
