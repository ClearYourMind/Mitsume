/// @desc Control & Check status

mask_index = sp_hero_stand
sc_hero_control()

event_inherited()

feetcollision = false

/// Check status
if health<=0
	sc_hero_die()

debugstr = ""
if hurt {
	debugstr+="HURT "
	sprite_index = sp_hero_hurt
	if animEnded {
		debugstr+="ANIMATION ENDED "
		hurt = false
		recover = true
		alarm_set(0, 100)
	}
}

if recover
	debugstr+="RECOVERING"

//show_debug_message(debugstr)
