/// @desc

spawnTime = sc_timeout_new(spawnPeriod + random(spawnPeriodSpread * 2)-spawnPeriodSpread)
sc_timeout_start(spawnTime)
