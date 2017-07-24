/// @desc Check input

counter++

// left
if keyboard_check_pressed(vk_left) or
   gamepad_button_check_pressed(gpNum, gp_padl) {
	if currentPos > 0
		currentPos--

	counter = 1
	cursorVisible = true
	sc_play_sound(sn_select2, false)
}

// right
if keyboard_check_pressed(vk_right) or
   gamepad_button_check_pressed(gpNum, gp_padr) {
	if currentPos < maxPos
		currentPos++

	counter = 1
	cursorVisible = true
	sc_play_sound(sn_select2, false)
}

// start
if keyboard_check_pressed(vk_return) or 
   gamepad_button_check_pressed(gpNum, gp_start) {
	sc_play_sound(sn_select3, false)

	switch currentPos {
	case 0:
		instance_create_depth(0,0,0, ob_control) 
		break
	case 1:
		instance_create_depth(0,0,0, ob_gamepad_control)
	}

	alarm_set(0, 25)
}

debugstr = ""
for (var i=0; i<12; i++)
if gamepad_button_check(gpNum, i)
	debugstr += " "+string(i)	
	
if debugstr != ""	
	show_debug_message(debugstr)
