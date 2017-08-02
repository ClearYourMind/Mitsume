/// @desc Check input

// start
if device = 0 {
	// check for keyboard
	if keyboard_check_pressed(vk_anykey)
		device = 1
		
	// check for gamepad	
	for (var i=0; i<array_length_1d(gpButtons); i++)
	if gamepad_button_check_pressed(gpNum, gpButtons[i]) {
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
			with instance_create_depth(0,0, 0, ob_control_gamepad) {
				gpNum = other.gpNum
			}
			
			break
		}
	}
}

/*
if keyboard_check_pressed(vk_return)
	device = 1

if gamepad_button_check_pressed(gpNum, gp_start) 
	device = 2

if device != 0 {
	switch device {
	case 1:
		instance_create_depth(0,0, 0, ob_control_keyboard)
		break
	case 2:
		instance_create_depth(0,0, 0, ob_control_gamepad)
		break
	}
	
//	instance_activate_object(ob_game_master)
	sc_play_sound(sn_select3, false)
//	sc_transition_start(sc_action_goto_room, room_next(room))
	sc_transition_start(sc_action_goto_room, rm_setup)
}
*/

