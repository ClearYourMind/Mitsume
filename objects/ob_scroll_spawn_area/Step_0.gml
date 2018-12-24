/// @desc

if sc_timeout_is_started(spawnTime)
if sc_timeout_over(spawnTime) {
	if spawnAllowed
		sc_spawner_spawn()
	
	if spawnLoop {
		spawnTime = sc_timeout_new(spawnPeriod + random(spawnPeriodSpread * 2)-spawnPeriodSpread)
		sc_timeout_start(spawnTime)
	}

}
