/// @desc Control & Check status

mask_index = sp_hero_stand
sc_hero_control()

event_inherited()

debugstr = ""

if feetcollision
	debugstr += " FEET "
if headcollision
	debugstr += " HEAD "

feetcollision = false
headcollision = false

/// Check status
if health<=0
	sc_hero_die()

if hurt {
	sprite_index = sp_hero_hurt
	if animEnded {
		hurt = false
		recover = true
		alarm_set(0, 100)
	}
}


//show_debug_message(debugstr)
