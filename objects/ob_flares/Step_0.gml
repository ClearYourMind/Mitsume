/// @desc Process flares

if not initiated {
	if not flareLifetime = -1 {
		flareLifetime = sc_timeout_new(flareLifetime)	
		sc_timeout_start(flareLifetime)
	}
	if instance_exists(object) {
		w1 = object.w1
		w2 = object.w2
	}
	sparkleSpawnTime = sc_timeout_new(sparkleSpawnPeriod, true)
	sc_timeout_start(sparkleSpawnTime)
	initiated = true
	
}

if is_array(flareLifetime)
if sc_timeout_over(flareLifetime) {
	spawn = false
}


if not ds_exists(sparkle, ds_type_list)
	exit

var _star = []
if spawn
if sc_timeout_over(sparkleSpawnTime) {
	_star[sh.lifetime] = sc_timeout_new(sparkleLifetime)
	sc_timeout_start(_star[sh.lifetime])
	_star[sh.x] = x + random(w1+w2)-w1
	_star[sh.y] = y + random(6)-3
	_star[sh.phase] = 0
	ds_list_add(sparkle, _star)
}

for (var i=0; i<ds_list_size(sparkle); i++) {
	_star = sparkle[| i]
		_star[sh.y] -= sparkleSpeed * dTime
		
	if sc_timeout_over(_star[sh.lifetime]) {
		if _star[sh.phase] = 0 {
			_star[sh.phase] = 1
			sc_timeout_start(_star[sh.lifetime])		
		} else {
			ds_list_delete(sparkle, i)
			i--
			continue
		}
	}
	sparkle[| i] = _star
}

if ds_list_size(sparkle)=0 and not spawn {
	instance_destroy()
}

//sparkleImIndex = (sparkleImIndex + sparkleImSpeed) mod 4
