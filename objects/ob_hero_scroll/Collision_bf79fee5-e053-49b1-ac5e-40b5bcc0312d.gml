/// @desc

if not recover {
	forward = sign(other.x - x)
	if forward = 0 forward = 1
	if health > 1 {
		sc_gui_update(hero.guiObject)
		event_perform_object(ob_hero_scroll_hurt, ev_other, ev_user0)
		instance_change(ob_hero_scroll_hurt, false)
		with ob_arrow_scroll
			instance_change(ob_arrow_scroll_hurt, false)
		sc_play_sound(sn_hurt, false)
	} else {
		sc_gui_update(hero.guiObject)
		event_perform_object(ob_hero_scroll_dead, ev_other, ev_user0)
		instance_change(ob_hero_scroll_dead, false)
		with ob_arrow_scroll {
			event_perform_object(ob_arrow_scroll_dead, ev_other, ev_user0)
			instance_change(ob_arrow_scroll_dead, false)
		}
		sc_play_sound(sn_hurt2, false)
	}
}
