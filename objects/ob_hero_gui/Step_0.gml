/// @desc Process flashing and inputs

oX = view_x
oY = view_y+view_h-20

// process inputs
if keysPressed[k.Pause] {
	paused = not paused
	//sc_gui_update(hero.guiObject)
	sc_play_sound(sn_select, false)
	if paused
		instance_change(ob_hero_gui_paused, false)
}
