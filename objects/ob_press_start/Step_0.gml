/// @desc Check input

// start
var device = 0

if keyboard_check_pressed(vk_return)
	device = 1

if gamepad_button_check_pressed(gpNum, gp_start) 
	device = 2

if device != 0 {
	switch device {
	case 1:
		instance_activate_object(ob_control)
		break
	case 2:
		instance_activate_object(ob_gamepad_control)
		break
	}
	
//	instance_activate_object(ob_game_master)
	sc_play_sound(sn_select3, false)
	sc_transition_start(sc_action_start_game)
	
}


