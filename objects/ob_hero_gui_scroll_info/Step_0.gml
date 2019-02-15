event_perform_object(ob_gui, ev_step, ev_step_normal)
/// @desc 

if not instance_exists(hero) exit


if keysPressed[k.Pause] {
	paused = not paused
	sc_play_sound(sn_select, false)
	if not paused {
		instance_change(ob_hero_gui_scroll, false)
		sc_gui_update(ob_hero_gui_scroll)
		exit
	}
}

if keysPressed[k.Down] {
	sc_play_sound(sn_select4)
	instance_change(ob_hero_gui_scroll_paused, false)
	sc_gui_update(ob_hero_gui_scroll_paused)
	exit
}


// prevent further input processing in game
for (var i=0; i<array_length_1d(keys); i++) {
	keys[i] = false
	keysPressed[i] = false
}

visible_1 = ((counter div 10) mod 2) == 1
sc_gui_update(id)
