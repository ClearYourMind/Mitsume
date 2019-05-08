/// @desc Process timer
if started {

	if not sc_timeout_over(fadeTime) {
		if dAlpha < 0
			image_alpha = fadeTime[t.current]/fadeTime[t.inittime]
		else
			image_alpha = (fadeTime[t.inittime]-fadeTime[t.current]) / fadeTime[t.inittime]
	} else {
		if dAlpha < 0 {
		// end
			show_debug_message("Transition has finished")
			if script_exists(action_on_finish) {
				script_execute(action_on_finish, arg)
				show_debug_message("Action " + script_get_name(action_on_finish) + " (arg = " + string(arg) + ") performed")
			}
			started = false
			image_alpha = 0
			instance_destroy()
		} else {
			if not performing
				performing = true
			else {
			// reverse
				performing = false
				image_alpha = 1
				dAlpha = -1
				sc_timeout_start(fadeTime)
				show_debug_message("Transition has changed room")
				if script_exists(action_on_room_change) {
					script_execute(action_on_room_change, arg)
					show_debug_message("Action " + script_get_name(action_on_room_change) + " (arg = " + string(arg) + ") performed")
				}
				show_debug_message(" ")
			}
		}
	}
	
}
