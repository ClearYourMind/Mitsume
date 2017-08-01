/// @desc Start transition

if not started {
	sc_timeout_start(fadeTime)
	dAlpha = 1
	started = true
	if script_exists(action)
		show_debug_message("Transition with "+script_get_name(action)+ " started")
}
