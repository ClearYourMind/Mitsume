/// @desc Check input

// start
if device = 0 {
	// check for keyboard
	if keyboard_check_pressed(vk_anykey)
		device = 1
		
	// check for gamepad	
	for (var i=0; i<array_length_1d(gpButtons); i++)
	if gamepad_button_check_pressed(gpNum, gpButtons[i]) or 
	   (gamepad_axis_value(gpNum, gp_axislh) >= 0.5) or
	   (gamepad_axis_value(gpNum, gp_axislv) >= 0.5) {
		device = 2
		break
	}
	
	// create according ob_control
	if device != 0 {
		switch device {
		case 1:
			instance_create_depth(0,0, 0, ob_control_keyboard)
			break
		case 2:
			with instance_create_depth(0,0, 0, ob_control_gamepad)
				gpNum = other.gpNum
			break
		}
	}
}

