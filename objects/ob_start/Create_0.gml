/// @desc Init systems and values
globalvar maxChannel
globalvar counter

application_surface_enable(false)

maxChannel = 2

audio_channel_num(maxChannel)
audio_set_master_gain(0, 0.25)

counter = 0

cursorPos[0] = [ 25, 100]
cursorPos[1] = [125, 100]
currentPos = 0
cursorVisible = false
maxPos = 1


// check if gamepads are supported and available
var skip = true

if gamepad_is_supported() {
	var n = gamepad_get_device_count()
	for (var i=0; i<n; i++)
	if gamepad_is_connected(i) {
		skip = false
		break  // gamepad found
	}
}

// skip control method selection	
if skip {
	instance_create_depth(0,0,0, ob_control)
	room_goto_next()
}
