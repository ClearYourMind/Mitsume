/// @desc Start transition

if not started {
	dw = display_get_gui_width()
	dh = display_get_gui_height()
	sc_timeout_start(fadeTime)
	dAlpha = 1
	started = true
	show_debug_message("Transition started")
	if script_exists(action_on_start) {
		script_execute(action_on_start, arg_on_start)
		show_debug_message("Action " + script_get_name(action_on_start)+ " (arg = " + string(arg_on_start) + ") performed")
	}
	show_debug_message(" ")
}
