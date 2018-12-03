/// @desc

event_perform_object(ob_moving, ev_step, ev_step_normal)

if animEnded {
	instance_change(ob_hero, false)	
}

if not feetcollision {
	stopFactor = 1
} else
	stopFactor = oStopFactor

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
