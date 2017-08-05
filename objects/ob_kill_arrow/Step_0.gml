event_inherited()
/// @desc Spawn and process shines

if phase = ar.Disappear {
	sprite_index = sp_arrow
}


if not ds_exists(shine, ds_type_list)
	exit

var _star = []
if phase != ar.Disappear {
	if sc_timeout_over(shineSpawnTime) {
		_star[sh.lifetime] = sc_timeout_new(0.25)
		sc_timeout_start(_star[sh.lifetime])
		_star[sh.x] = x + random(w1+w2)-w1
		_star[sh.y] = y + random(6)-3
		_star[sh.phase] = 0
		ds_list_add(shine, _star)
//		show_debug_message("Sparkle added, count = "+string(ds_list_size(shine)))
	}
}

for (var i=0; i<ds_list_size(shine); i++) {
	_star = shine[| i]
		_star[sh.y] -= shineSpeed * dTime
		
	if sc_timeout_over(_star[sh.lifetime]) {
		if _star[sh.phase] = 0 {
			_star[sh.phase] = 1
			sc_timeout_start(_star[sh.lifetime])		
		} else {
			ds_list_delete(shine, i)
			i--
			continue
		}
	}
	shine[| i] = _star
}

shineImIndex = (shineImIndex + shineImSpeed) mod 4
