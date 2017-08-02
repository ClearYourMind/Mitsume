/// @desc check if gamepads are supported and available

if device != 0  exit

gpNum = -1

if gamepad_is_supported() {
	var n = gamepad_get_device_count()
	for (var i=0; i<n; i++)
	if gamepad_is_connected(i) {
		gpNum = i
		show_debug_message("Gamepad no."+string(i)+" is used")
		break  // gamepad found
	}
}

alarm_set(1, 50)
