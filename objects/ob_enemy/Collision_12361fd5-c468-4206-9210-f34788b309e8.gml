/// @desc Hurt enemy


if not hurt {
	strength -= other.hit
	hurtstep = 0
	_hurtTime = hurtTime
	hurt = true
	sc_play_sound(sn_hit, false)
}
