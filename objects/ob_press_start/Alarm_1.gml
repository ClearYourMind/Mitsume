/// @desc check if gamepads are supported and available

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

// skip control method selection	
if gpNum = -1 {
	instance_activate_object(ob_control)
	// goto next room
	sc_transition_start(sc_action_start_game)

}

