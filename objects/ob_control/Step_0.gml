/// @desc Process keys

if keyboard_check_pressed(vk_escape) {
	alarm_set(0, 10)
	show_debug_message("You've pressed ESC key")
}
if keyboard_check_released(vk_escape) {
	if escHold
		game_end()
	else {
		show_debug_message("Game restarting...")
		game_restart()
	}
	exit
}

