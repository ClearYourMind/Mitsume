/// @desc

// Inherit the parent event

if object_exists(enemyObject) {
	if alreadySpawnedCount < spawnLimitCount {
		alreadySpawnedCount++
		event_inherited();
//		instance_deactivate_object(id)
	}
}
