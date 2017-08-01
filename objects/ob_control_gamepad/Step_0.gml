event_inherited()
/// @desc Process inputs

for (var i=0; i<array_length_1d(keyAssign); i++) {
	keys[i] = gamepad_button_check(gpNum, keyAssign[i])
}

