/// @desc

if not recover {
	forward = sign(other.x - x)
	if forward = 0 forward = 1
	if health > 1 {
		event_perform_object(ob_hero_scroll_hurt, ev_other, ev_user0)
		sc_gui_update(hero.guiObject)
		instance_change(ob_hero_scroll_hurt, false)
		sc_play_sound(sn_hurt, false)
	} else {
	//	sc_hero_die_lay()
	}
}
