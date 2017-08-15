/// @desc Process timer and spawn

if sc_timeout_over(spawnTime) {
	spawnTime = sc_timeout_new(spawnPeriod + random(spawnPeriod*0.5)-spawnPeriod*0.25)
	sc_timeout_start(spawnTime)
	
	if object_exists(enemyObject)
		instance_create_depth(x, y, depths.general, enemyObject)
}

