event_perform_object(ob_gui, ev_step, ev_step_normal)
/// @desc 

if not instance_exists(hero) exit

if keysPressed[k.Left] 
if menuDx = 0 and not chosen {
	sc_play_sound(sn_select2)
	menuDx = 10
}

if keysPressed[k.Right]
if menuDx = 0 and not chosen {
	sc_play_sound(sn_select2)
	menuDx = -10
}

if keysPressed[k.Jump]
if menuDx = 0 {
	var _item = menu[menuPos]
	var ok = false
	if _item[item.type] = itemtype.exitshop {
		sc_play_sound(sn_select3)
		instance_change(ob_hero_gui_scroll, true)
		sc_gui_update(ob_hero_gui_scroll)
		sc_transition_start([noone, sc_action_goto_room, sc_action_return_to_scroll], [0, previousRoom])
		ok = true
	} else
	if not _item[item.soldout] {
		if score - _item[item.price] >= 0 {
			ok = true
			if not chosen {
				chosen = true
				sc_play_sound(sn_select4)
				sc_gui_set_tickerline("Are you sure to spend "+string(_item[item.price]) +
									  " on the " + _item[item.name]+ " ? \n " +
									  "(JUMP to buy, FIRE to reject)")
			} else {
				chosen = false
				score -= _item[item.price]
				_item[item.soldout] = true
				menu[menuPos] = _item
				sc_play_sound(sn_select3)
				sc_shop_item_apply(_item)
				sc_gui_set_tickerline("Good choice")
			}
		}
	}
	if not ok {
		sc_play_sound(sn_error)
		sc_gui_set_tickerline("You cannot buy it. Try something else")
	}
}

if keysPressed[k.Fire]
if menuDx =0 and chosen {
	chosen = false
	sc_play_sound(sn_select4)
	sc_gui_set_tickerline("As you wish")
}

// process scrolling
if menuDx != 0 {
	menuX += menuDx
	if abs(menuX) > menuInterval {
		// scrolling finished
		menuPos -= sign(menuDx)
		menuX = 0
		menuDx = 0
		if menuPos >= menuCount
			menuPos -= menuCount
		if menuPos < 0
			menuPos += menuCount
		var _item = menu[menuPos]
		var _s = ""
		if _item[item.soldout]
			_s = "This item is sold out. Come again and see if it appeared"
		else {
			_s = _item[item.desc]	
			if not (_item[item.type] = itemtype.exitshop)
				_s += "\n (JUMP to buy)"
		}
		sc_gui_set_tickerline(_s, view_w * 0.9)
	}
}

// prevent further input processing in game
for (var i=0; i<array_length_1d(keys); i++) {
	keys[i] = false
	keysPressed[i] = false
}

visible_1 = ((counter div 10) mod 2) == 1
sc_gui_update(id)
