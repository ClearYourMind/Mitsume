/// @desc

if feetcollision {
	if image_index>3 {
		image_index = 3
		image_speed = 0
	}
} else {
	if image_index>2.9
		image_index = 2.9
}

dTime = 0.005

if not feetcollision {
	stopFactor = 1
} else
	stopFactor = stopFactorHi

image_xscale = forward

event_perform_object(ob_heroparent, ev_step, ev_step_normal)

event_perform_object(ob_moving, ev_step, ev_step_normal)
event_perform_object(ob_moving_scroll, ev_step, ev_step_normal)
