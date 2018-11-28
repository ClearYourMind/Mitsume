/// @desc

// inherited STEP form ob_moving
event_perform_object(ob_moving, ev_step, ev_step_normal)

if hurt {
	if animEnded {
		hurt = false
		recover = true
		sc_timeout_start(recoverTime)
		instance_change(ob_hero, false)
	}
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
