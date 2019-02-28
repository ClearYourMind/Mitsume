/// @desc Spawn occured
var _spawner = other
var _sc = ds_map_find_value(mobList, _spawner.enemyObject)

curScore += _sc
if curScore >= wavePoints {
	event_perform(ev_other, ev_user2) // stop spawning
}

for (var i=0; i<ds_list_size(_spawner.lastSpawned); i++) {
	with _spawner.lastSpawned[| i]
		dropvalue += dropvalue * 0.05 * (other.waveNumber-1)
}

debugstr = "Mob "+object_get_name(other.enemyObject)+" spawned. Score: "+string(curScore)+"/"+string(wavePoints)

