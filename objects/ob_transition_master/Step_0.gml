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
			if script_exists(action)
				show_debug_message("Transition with " + script_get_name(action)+" ended")
			started = false
			image_alpha = 0
			action = noone
		} else {
			if not performing
				performing = true
			else {
			// reverse
				performing = false
				image_alpha = 1
				dAlpha = -1
				sc_timeout_start(fadeTime)
				if script_exists(action) {
					script_execute(action, arg)
					show_debug_message("Transition action : " + script_get_name(action) + " performed")
				}
			}
		}
	}
	
}
