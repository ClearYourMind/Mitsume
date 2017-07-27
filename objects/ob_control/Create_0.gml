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


keys[k.Left ] = false
keys[k.Right] = false
keys[k.Up   ] = false
keys[k.Down ] = false
keys[k.Jump ] = false
keys[k.Fire ] = false
keys[k.altFire] = false
keys[k.Pause] = false

// key assignments
_key[k.Left ] = ord("A")
_key[k.Right] = ord("D")
_key[k.Up   ] = ord("W")
_key[k.Down ] = ord("S")
_key[k.Jump ] = ord("H")
_key[k.Fire ] = ord("G")
_key[k.altFire] = ord("J")
_key[k.Pause] = vk_return

escHold = false

instance_deactivate_object(id)
