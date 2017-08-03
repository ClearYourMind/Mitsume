globalvar keyAssign
globalvar keys
globalvar keysPressed
globalvar keyCode

enum k {
	Left,
	Right,
	Up,
	Down,
	Jump,
	Fire,
	altFire,
	Pause = 7
}

sc_key_assign_load()

for (var i=0; i<7+1; i++) {
	keys[i] = false
	keysPressed[i] = false
	triggered[i] = false
}

escHold = false

