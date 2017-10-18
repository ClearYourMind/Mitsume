/// @desc Spawn

if object_exists(enemyObject) {
	var _x = x
	var _y = y
	repeat (spawnNumber) {
		if spreadByWidth
			_x = x + random(w1+w2)-w1
		if spreadByHeight
			_y = y + random(h1+h2)-h1
		instance_create_depth(_x, _y, depths.general, enemyObject)
	}
}

