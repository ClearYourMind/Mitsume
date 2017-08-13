/// @desc Start transition

if not started {
	dw = display_get_gui_width()
	dh = display_get_gui_height()
	sc_timeout_start(fadeTime)
	dAlpha = 1
	started = true
	if script_exists(action)
		show_debug_message("Transition with "+script_get_name(action)+ " started")
}
