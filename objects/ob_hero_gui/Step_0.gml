/// @desc Process flashing and selection

if paused {
	visible_1 = ((counter div 10) mod 2) == 1
	visible_2 = ((counter div 25) mod 2) == 1
	sc_gui_update()
}

