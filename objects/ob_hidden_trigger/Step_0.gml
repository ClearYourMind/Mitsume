/// @desc

if place_meeting(x, y, triggerObject) {
	if not triggered {
		event_perform(ev_other, ev_user0)  // activate hidden
		triggered = true
		if not triggerLoop
			instance_destroy()
	}
} else if triggered {
	triggered = false
	if noObjectDeactivation
		event_perform(ev_other, ev_user1) // deactivate hidden
}
