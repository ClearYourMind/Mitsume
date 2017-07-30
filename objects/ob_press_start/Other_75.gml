/// @desc Re-check gamepads

gbNum = -1

if gamepad_is_supported() {
	var gpCount = gamepad_get_device_count()
	for (var i=0; i<gpCount; i++)
	if gamepad_is_connected(i) {
		show_debug_message("Gamepad no."+string(i)+" is used")
		gpNum = i
		break
	}
}

