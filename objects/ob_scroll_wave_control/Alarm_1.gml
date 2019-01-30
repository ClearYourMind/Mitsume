/// @desc check for mobs

if instance_number(ob_enemy) > 0 {
	alarm_set(1, checkTime) // check for mobs
	debugstr = "kill those mobs!"
} else {
	alarm_set(0, pauseTime) // pause between waves
	debugstr = "wave ended"
}
