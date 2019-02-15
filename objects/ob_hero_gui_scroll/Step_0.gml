event_perform_object(ob_gui, ev_step, ev_step_normal)
/// @desc Process inputs

if not instance_exists(hero) exit

// process inputs
if keysPressed[k.Pause]
if not ob_transition_master.started {
	paused = not paused
	sc_play_sound(sn_select, false)
	if paused
		instance_change(ob_hero_gui_scroll_paused, false)
}
