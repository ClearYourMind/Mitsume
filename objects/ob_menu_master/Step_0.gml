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
		if varPressed = false {
			keyAssign[ob_control.cfgKeyNums[varPos]] = noone
			if keyCode != noone {
				varPressed = true
				keyAssign[ob_control.cfgKeyNums[varPos]] = keyCode
				sc_play_sound(sn_select4)
			}
		} else 
		if keyCode = noone {
			varPressed = false
			varPos++
			if varPos > array_length_1d(ob_control.cfgKeyNums)-1 {
				sc_key_assign_save()
				varMode = mode.start
				varPos = 0
			}
		}
		break
	}
}

sc_gui_update(id)
