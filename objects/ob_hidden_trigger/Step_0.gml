/// @desc

if place_meeting(x, y, triggerObject) {
	if not triggered {
		sc_hidden_trigger()
		triggered = true
		with ob_game_master 
			alarm_set(0, deactivateTime)
		with ob_hidden
			alarm_set(0, deactivateTime)
		show_debug_message("alarm set " + string(get_timer()))
		if not triggerLoop
			instance_destroy()
	}
} else
	triggered = false
	