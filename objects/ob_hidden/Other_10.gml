/// @desc Activate hidden objects

var _hiddenObj = noone

if hiddenObject != noone
	_hiddenObj = instance_create_depth(x, y, depths.general, hiddenObject)

if visibleActivation {
	var _flare = instance_create_depth(x, y, depths.explosions, ob_flares)

	with _flare {
		sparkleSpawnPeriod = 0.1
		flareLifetime = 0.5
		w1 = other.w1
		w2 = other.w2
		h1 = other.h1
		h2 = other.h2
	}

	_flare.object = _hiddenObj
}

if is_array(hiddenInstances)
	for (var i=0; i<array_length_1d(hiddenInstances); i++) {
		instance_activate_object(hiddenInstances[i])
		
		if visibleActivation
		with instance_create_depth(x, y, depths.explosions, ob_flares) {
			sparkleSpawnPeriod = 0.1
			flareLifetime = 0.5
			w1 = other.w1
			w2 = other.w2
			h1 = other.h1
			h2 = other.h2
			object = other.hiddenInstances[i]
		}
	
	}

activated = true
