/// @desc check for mobs

if instance_number(ob_enemy) > 0 {
	alarm_set(1, checkTime) // check for mobs
	debugstr = "kill those mobs!"
} else {
	debugstr = "wave ended"
	//if waveNumber mod 2 = 0 {
		event_perform(ev_other, ev_user3) // approach safehouse
//	}
}
