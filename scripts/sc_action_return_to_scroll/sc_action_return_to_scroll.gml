
sc_action_set_room_persistent(false)

scrollSpeed = 0

ob_safehouse.phase = sf.scrollSpeedup

with ob_heroparent {
	accel = 350
	maxspeedX = 85
	maxspeedY = maxspeedYMove
	grav = 0
	instance_change(ob_hero_scroll_stand, false)
	event_perform(ev_other, ev_user0) // before stand
	sc_gui_update(ob_hero_gui_scroll)
	
	instance_destroy(ob_arrow)
	
	with instance_create_depth(x, y, depths.shots, ob_arrow_scroll_stand)
		event_perform(ev_other, ev_user0) // before stand
			
}
