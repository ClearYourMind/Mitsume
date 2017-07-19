/// @desc Hurt enemy


if not hurt {
	strength -= other.hit
	hurtstep = 0
	_hurtTimeout = hurtTimeout
	hurt = true
	sc_play_sound(sn_hit, false)
}
