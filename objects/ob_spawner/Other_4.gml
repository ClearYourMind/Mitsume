/// @desc Start deactivated

spawnPeriodSpread = spawnPeriod * 0.25
spawnTime = sc_timeout_new(random(spawnPeriodSpread))
sc_timeout_start(spawnTime)

instance_deactivate_object(id)
