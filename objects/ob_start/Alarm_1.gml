/// @desc check if gamepads are supported and available

var skip = true

if gamepad_is_supported() {
	var n = gamepad_get_device_count()
	for (var i=0; i<n; i++)
	if gamepad_is_connected(i) {
		gpNum = i
		show_debug_message("Gamepad no."+string(i)+" is used")
		skip = false
		break  // gamepad found
	}
}

// skip control method selection	
if skip {
	instance_activate_object(ob_control)
	alarm_set(0, 5)
}

