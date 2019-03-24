/// @desc

if sc_timeout_is_started(spawnTime)
if sc_timeout_over(spawnTime) {
	if spawnAllowed
		event_perform(ev_other, ev_user0) // Spawn
	
	if spawnLoop {
		spawnTime = sc_timeout_new(spawnPeriod + random(spawnPeriodSpread * 2)-spawnPeriodSpread)
		sc_timeout_start(spawnTime)
	}

}
