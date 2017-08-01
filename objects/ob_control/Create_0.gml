globalvar keyAssign
globalvar keys

enum k {
	Left,
	Right,
	Up,
	Down,
	Jump,
	Fire,
	altFire,
	Pause
}

sc_load_key_assign()

keys[k.Left ] = false
keys[k.Right] = false
keys[k.Up   ] = false
keys[k.Down ] = false
keys[k.Jump ] = false
keys[k.Fire ] = false
keys[k.altFire] = false
keys[k.Pause] = false

escHold = false

