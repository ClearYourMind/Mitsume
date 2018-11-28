/// @desc

event_perform_object(ob_heroparent, ev_step, ev_step_normal)

if animEnded {
	instance_change(ob_hero, false)	
}

if not feetcollision {
	stopFactor = 1
} else
	stopFactor = oStopFactor
	
feetcollision = false
headcollision = false
leftcollision = false
rightcollision = false

animEnded = false
