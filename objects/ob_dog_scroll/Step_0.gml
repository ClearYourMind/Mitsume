/// @desc

// ALWAYS
if feetcollision {   
	stopFactor = stopFactorHi 
} else
	stopFactor = stopFactorLo 

// check range ahead  
if sign(xDist) != forward {
	if feetcollision 
		forward = sign(xDist)
}

image_xscale = forward

feetcollision = false
sidecollision = false

event_perform_object(ob_enemy_scroll, ev_step, ev_step_normal)
