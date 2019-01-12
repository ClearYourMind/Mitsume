/// @desc

event_perform_object(ob_moving, ev_step, ev_step_normal)
event_perform_object(ob_moving_scroll, ev_step, ev_step_normal)

if animEnded {
	hurt = false
	recover = true
	sc_timeout_start(recoverTime)
	speedX = scrollSpeed * 0.75
	event_perform_object(ob_hero_scroll_jump, ev_other, ev_user0);
	instance_change(ob_hero_scroll_jump, false)
}

if not feetcollision {
	stopFactor = 1
} else
	stopFactor = stopFactorHi

image_xscale = forward

event_perform_object(ob_heroparent, ev_step, ev_step_normal)

