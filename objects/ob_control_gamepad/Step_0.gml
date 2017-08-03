event_inherited()
/// @desc Process inputs

// get keycode for any pressed button
keyCode = noone
for (var i=0; i<array_length_1d(gpButtons); i++)
if gamepad_button_check(gpNum, gpButtons[i]) {
	keyCode = gpButtons[i]
	break
}

// get array of pressed asssigned buttons
for (var i=0; i<array_length_1d(keyAssign); i++)
	keys[i] = gamepad_button_check(gpNum, keyAssign[i])

keys[k.Left ] = gamepad_axis_value(gpNum, gp_axislh) <= -0.5
keys[k.Right] = gamepad_axis_value(gpNum, gp_axislh) >= 0.5
keys[k.Up   ] = gamepad_axis_value(gpNum, gp_axislv) <= -0.5
keys[k.Down ] = gamepad_axis_value(gpNum, gp_axislv) >= 0.5

for (var i=0; i<array_length_1d(keyAssign); i++) {
	if keys[i] = true {
		if not triggered[i] {
			triggered[i] = true
			keysPressed[i] = true
		} else 
			keysPressed[i] = false
	} else {
		triggered[i] = false
		keysPressed[i] = false
	}
}

