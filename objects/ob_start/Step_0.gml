/// @desc Check input

counter++

// left
if keyboard_check_pressed(vk_left) or
   gamepad_button_check_pressed(gpNum, gp_padl) {
	if currentPos > 0
		currentPos--

	counter = 1
	cursorVisible = true
	sc_play_sound(sn_select2, false)
}

// right
if keyboard_check_pressed(vk_right) or
   gamepad_button_check_pressed(gpNum, gp_padr) {
	if currentPos < maxPos
		currentPos++

	counter = 1
	cursorVisible = true
	sc_play_sound(sn_select2, false)
}

// start
if keyboard_check_pressed(vk_return) or 
   gamepad_button_check_pressed(gpNum, gp_start) {
	sc_play_sound(sn_select3, false)

	switch currentPos {
	case 0:
		instance_activate_object(ob_control)
		break
	case 1:
		instance_activate_object(ob_gamepad_control)
		break
	}
	if alarm_get(0) <= 0
		alarm_set(0, 25)
}


/// input debug

