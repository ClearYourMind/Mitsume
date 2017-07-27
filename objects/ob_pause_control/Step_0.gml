/// @desc
if paused {
	with ob_control event_perform(ev_step, ev_step_normal)
	var pb = keys[k.Pause]  // store pause button state
	for (var i=0; i<array_length_1d(keys); i++) {
		keys[i] = false
	}
	keys[k.Pause] = pb
	
}
