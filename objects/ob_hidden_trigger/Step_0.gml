/// @desc

if place_meeting(x, y, triggerObject) {
	if not triggered {
		event_perform(ev_other, ev_user0)  // activate hidden
		triggered = true
		with ob_game_master 
			alarm_set(0, deactivateTime)
		with ob_hidden
			alarm_set(0, deactivateTime)
		if not triggerLoop
			instance_destroy()
	}
} else
	triggered = false
	
