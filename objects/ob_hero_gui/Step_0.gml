event_inherited()
/// @desc Process flashing and inputs

if not instance_exists(hero) exit

// process inputs
if keysPressed[k.Pause]
if not ob_transition_master.started {
	paused = not paused
	//sc_gui_update(hero.guiObject)
	sc_play_sound(sn_select, false)
	if paused
		instance_change(ob_hero_gui_paused, false)
}
