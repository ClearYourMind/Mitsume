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
			started = false
			image_alpha = 0
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
					script_execute(action_on_room_change, arg_on_room_change)
					show_debug_message("Action " + script_get_name(action_on_room_change) + " (arg = " + string(arg_on_room_change) + ") performed")
				}
				show_debug_message(" ")
			}
		}
	}
	
}
