/// @desc

if phase = 2 {
	strength -= other.hit
		
	event_perform_object(ob_cmpHurtable, ev_collision, ob_shot)

	with other
		event_perform(ev_collision, ob_enemy)
}
