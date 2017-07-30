/// @desc Check input

counter++

// start
var device = 0

if keyboard_check_pressed(vk_return)
	device = 1

if gamepad_button_check_pressed(gpNum, gp_start) 
	device = 2

if device != 0 {
	sc_play_sound(sn_select3, false)
	if alarm_get(0) <= 0
		alarm_set(0, 25)

	switch device {
	case 1:
		instance_activate_object(ob_control)
		break
	case 2:
		instance_activate_object(ob_gamepad_control)
		break
	}
}


