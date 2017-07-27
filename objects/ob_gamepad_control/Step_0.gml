/// @desc Process inputs

if gamepad_button_check_pressed(gpNum, gp_shoulderlb) {
	alarm_set(0, 5)
}
if gamepad_button_check_released(gpNum, gp_shoulderlb) {
	if escHold {
		game_restart()
		exit
	} else {
		game_end()
		exit
	}
}

for (var i=0; i<array_length_1d(_key); i++) {
	keys[i] = gamepad_button_check(gpNum, _key[i])
}
	
