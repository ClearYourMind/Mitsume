event_inherited()
/// @desc Process keys

keyCode = keyboard_key
if keyCode = 0
	keyCode = noone
	
for (var i=0; i<array_length_1d(keyAssign); i++) {
	keys[i] = keyboard_check(keyAssign[i])
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


