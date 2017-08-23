///@desc Process flashing and inputs

oX = view_x
oY = view_y+view_h-20

if not instance_exists(hero) exit

// process inputs
if keysPressed[k.Pause] {
	paused = not paused
	sc_play_sound(sn_select, false)
	if not paused {
		instance_change(ob_hero_gui, false)
		sc_gui_update(ob_hero_gui)
		exit
	}
}

if keysPressed[k.Left] {
	sc_play_sound(sn_select2, false)
	with hero
	for (var i=weaponNum-1; i>=0; i--) 
	if weaponList[i, 1] = true {
		weaponNum = i
		weapon = weaponList[weaponNum, 0]
		break
	}
}
	
if keysPressed[k.Right] {
	sc_play_sound(sn_select2, false)
	with hero
	for (var i=weaponNum+1; i<array_height_2d(weaponList); i++) 
	if weaponList[i, 1] = true {
		weaponNum = i
		weapon = weaponList[weaponNum, 0]
		break
	}
}

if keysPressed[k.Up] {
	sc_play_sound(sn_select4)
	sc_gui_update(ob_hero_gui)
	instance_change(ob_hero_gui_shop, true)
	exit
}

// prevent further input processing in game
for (var i=0; i<array_length_1d(keys); i++) {
	keys[i] = false
	keysPressed[i] = false
	
}

// process flashing
visible_1 = ((counter div 10) mod 2) == 1
visible_2 = ((counter div 25) mod 2) == 1
sc_gui_update(id)

