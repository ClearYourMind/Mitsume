/// @desc Process timer
if started {

	if not sc_timeout_over(fadeTime) {
		if dAlpha < 0
			image_alpha = fadeTime[t.current]/fadeTime[t.inittime]
		else
			image_alpha = (fadeTime[t.inittime]-fadeTime[t.current]) / fadeTime[t.inittime]
	
		show_debug_message(string(image_alpha))
	} else {
		if dAlpha < 0 {
		// end
			started = false
			image_alpha = 0
			action = noone
		} else {
		// reverse
			image_alpha = 1
			dAlpha = -1
			sc_timeout_start(fadeTime)
			if script_exists(action)
				script_execute(action)
		}
	}
	
}
