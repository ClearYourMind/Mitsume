/// @desc override inputs

// controls in hero GUI

if not instance_exists(hero) exit

if paused {
	if keys[k.Left] {
		if not triggered[k.Left] {
			triggered[k.Left] = true
			sc_play_sound(sn_select2, false)
			with hero
			for (var i=weaponNum-1; i>=0; i--) 
			if weaponList[i, 1] = true {
				weaponNum = i
				weapon = weaponList[weaponNum, 0]
				break
			}
		}
	} else
		triggered[k.Left] = false
	
	if keys[k.Right] {
		if not triggered[k.Right] {
			triggered[k.Right] = true
			sc_play_sound(sn_select2, false)
			with hero
			for (var i=weaponNum+1; i<array_height_2d(weaponList); i++) 
			if weaponList[i, 1] = true {
				weaponNum = i
				weapon = weaponList[weaponNum, 0]
				break
			}
		}
	} else
		triggered[k.Right] = false
}	

// process pause triggering
if keys[k.Pause] {
	if not triggered[k.Pause] {
		triggered[k.Pause] = true
		paused = not paused
		sc_gui_update(hero.guiObject)
		sc_play_sound(sn_select, false)
	}
} else
	triggered[k.Pause] = false

// prevent further input processing in game
if paused {
	with ob_control event_perform(ev_step, ev_step_normal)
	var pb = keys[k.Pause]  // store pause button state
	for (var i=0; i<array_length_1d(keys); i++) {
		keys[i] = false
	}
	keys[k.Pause] = pb
}





