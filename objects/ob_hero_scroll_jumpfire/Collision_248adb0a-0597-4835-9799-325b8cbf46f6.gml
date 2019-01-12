/// @desc
if speedY>0 
if sc_hero_check_collision_mask(other.id, d.Down) {
	event_perform_object(ob_hero_scroll_stand, ev_other, ev_user0)
	instance_change(ob_hero_scroll_fire, false)	
	with ob_arrow_scroll
		instance_change(ob_arrow_scroll_stand, false)
}
	
