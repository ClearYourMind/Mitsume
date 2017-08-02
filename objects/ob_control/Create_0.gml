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

sc_load_key_assign()

for (var i=0; i<8; i++) {
	keys[i] = false
	keysPressed[i] = false
	triggered[i] = false
}

escHold = false

