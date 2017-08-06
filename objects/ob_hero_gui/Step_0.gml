/// @desc Process flashing and selection

oX = view_x
oY = view_y+view_h-20

if paused {
	visible_1 = ((counter div 10) mod 2) == 1
	visible_2 = ((counter div 25) mod 2) == 1
	sc_gui_update(id)
	
	if keysPressed[k.Up] {
		instance_change(ob_hero_gui_shop, false)
		sc_play_sound(sn_select4)
	}
}
