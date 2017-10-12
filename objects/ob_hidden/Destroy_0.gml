/// @desc
var _flare = instance_create_depth(x, y, depths.explosions, ob_flares)

with _flare {
	sparkleSpawnPeriod = 0.1
	flareLifetime = 0.5
	w1 = other.w1
	w2 = other.w2
	h1 = other.h1
	h2 = other.h2
}

if hiddenObject != noone
	_flare.object = instance_create_depth(x, y, depths.general, hiddenObject)

if is_array(hiddenInstances)
	for (var i=0; i<array_length_1d(hiddenInstances); i++) {
		instance_activate_object(hiddenInstances[i])
		
		with _flare	_flare = instance_copy(false)
		_flare.object = hiddenInstances[i]
	}
