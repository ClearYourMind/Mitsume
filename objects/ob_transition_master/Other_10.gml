/// @desc Start transition

if not started {
	sc_timeout_start(fadeTime)
	dAlpha = 1
	started = true
}
