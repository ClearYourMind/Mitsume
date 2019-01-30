/// @desc Stop spawning

with ob_scroll_spawn_area
	spawnAllowed = false

alarm_set(1, checkTime) // check for mobs

debugstr = "spawning stopped"


