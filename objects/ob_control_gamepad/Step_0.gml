event_inherited()
/// @desc Process inputs

keyCode = noone
for (var i=0; i<array_length_1d(gpButtons); i++)
if gamepad_button_check(gpNum, gpButtons[i]) {
	keyCode = gpButtons[i]
	break
}

for (var i=0; i<array_length_1d(keyAssign); i++) {
	keys[i] = gamepad_button_check(gpNum, keyAssign[i])
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

