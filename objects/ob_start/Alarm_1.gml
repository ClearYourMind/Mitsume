/// @desc check if gamepads are supported and available

var skip = true

if gamepad_is_supported() {
	var n = gamepad_get_device_count()
	for (var i=0; i<n; i++)
	if gamepad_is_connected(i) {
		gpNum = i
		skip = false
		break  // gamepad found
	}
}

// skip control method selection	
if skip {
	instance_create_depth(0,0,0, ob_control)
	room_goto_next()
}

