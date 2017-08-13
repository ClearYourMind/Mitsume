event_perform_object(ob_gui, ev_step, ev_step_normal)
/// @desc 

oX = view_x
oY = view_y+view_h-20

if not instance_exists(hero) exit


if keysPressed[k.Pause] {
	paused = not paused
	sc_play_sound(sn_select, false)
	if not paused {
		instance_change(ob_hero_gui, false)
		sc_gui_update(ob_hero_gui)
		exit
	}
}

if keysPressed[k.Down] {
	sc_play_sound(sn_select4)
	instance_change(ob_hero_gui_paused, false)
	sc_gui_update(ob_hero_gui_paused)
	exit
}

if keysPressed[k.Left] 
if menuDx = 0 {
	sc_play_sound(sn_select2)
	menuDx = 10
}

if keysPressed[k.Right]
if menuDx = 0 {
	sc_play_sound(sn_select2)
	menuDx = -10
}

if keysPressed[k.Jump]
if menuDx = 0 {
	var _item = menu[menuPos]
	var ok = false
	if not _item[item.soldout] {
		if score - _item[item.price] >= 0 {
			score -= _item[item.price]
			_item[item.soldout] = true
			menu[menuPos] = _item
			sc_play_sound(sn_select3)
			sc_shop_item_apply(_item)
			ok = true
		}
	}
	if not ok
		sc_play_sound(sn_error)
}

// process scrolling
if menuDx != 0 {
	menuX += menuDx
	if abs(menuX) > menuInterval {
		menuPos -= sign(menuDx)
		menuX = 0
		menuDx = 0
		if menuPos >= menuCount
			menuPos -= menuCount
		if menuPos < 0
			menuPos += menuCount
		var _item = menu[menuPos]
		sc_gui_set_tickerline(_item[item.desc])
	}
}

// prevent further input processing in game
for (var i=0; i<array_length_1d(keys); i++) {
	keys[i] = false
	keysPressed[i] = false
}

visible_1 = ((counter div 10) mod 2) == 1
sc_gui_update(self)
