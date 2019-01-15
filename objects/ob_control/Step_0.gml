/// @desc Process keys

if keyboard_check_pressed(vk_escape) {
	alarm_set(0, 10)
}
if keyboard_check_released(vk_escape) {
	if escHold
		game_end()
	else
		game_restart()
	exit
}

