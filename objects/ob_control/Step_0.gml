/// @desc Process keys

if keyboard_check_pressed(vk_escape) {
	alarm_set(0, 5)
}
if keyboard_check_released(vk_escape) {
	if escHold {
		game_restart()
		exit
	} else {
		game_end()
		exit
	}
}

for (var i=0; i<array_length_1d(_key); i++) {
	keys[i] = keyboard_check(_key[i])
}

counter++

