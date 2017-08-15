/// @desc Process timer and spawn

if not sc_timeout_is_started(spawnTime)
	sc_timeout_start(spawnTime)

if sc_timeout_over(spawnTime) {
	if object_exists(enemyObject)
		instance_create_depth(x, y, depths.general, enemyObject)
}

