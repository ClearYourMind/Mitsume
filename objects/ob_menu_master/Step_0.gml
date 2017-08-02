/// @desc

varVisible = ((counter div 20) mod 2 == 0)

// process controls
if instance_exists(ob_control) {
	switch varMode {
	case mode.start:
		if keysPressed[k.Down] {
			if varPos < 1
				varPos++
			sc_play_sound(sn_select2, false)
		}
		if keysPressed[k.Up] {
			if varPos > 0
				varPos--
			sc_play_sound(sn_select2, false)
		}
		if keysPressed[k.Pause] {
			if varPos = 0 {
				sc_play_sound(sn_select3, false)
				sc_transition_start(sc_action_goto_room, room_next(room))
			}
			if varPos = 1 {
				varMode = mode.wait
				if instance_exists(ob_control_gamepad) {
					varListKey = [k.Fire, k.Jump,  k.altFire]
					varListStr = ["FIRE", "JUMP", "EXTRA"]
				}
				if instance_exists(ob_control_keyboard) {
					varListKey = [k.Left, k.Right, k.Up, k.Down, k.Fire, k.Jump, k.altFire, k.Pause]
					varListStr = ["LEFT", "RIGHT", "UP", "DOWN", "FIRE", "JUMP", "EXTRA",   "START"]
				}
				sc_play_sound(sn_select4, false)
			}
		}
		break
	case mode.wait:
		//wait for all buttons released
		if keyCode = noone {
			varMode = mode.controls
			varPos = 0
		}
		break
	case mode.controls:
		if varPos < array_length_1d(varListKey) {
			if varPressed = false {
				keyAssign[varListKey[varPos]] = noone
				if keyCode != noone {
					varPressed = true
					keyAssign[varListKey[varPos]] = keyCode
					sc_play_sound(sn_select4)
				}
			} else {
				if keyCode = noone {
					varPressed = false
					varPos++
				}
			}
			
		} else {
			varMode = mode.start
			varPos = 0
		}
		break
	}
}

sc_gui_update(id)
