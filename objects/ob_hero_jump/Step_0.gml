/// @desc

event_perform_object(ob_moving, ev_step, ev_step_normal)

if keys[k.Left] {
	forward = -1
	accelX = accel * forward
}
if keys[k.Right] {
	forward = 1
	accelX = accel * forward
}
image_xscale = forward

if keys[k.Jump] {
	if not sc_timeout_over(jumpTime)
	    speedY = -jumpSpeed
} else 
	sc_timeout_stop(jumpTime)
	
if keys[k.Fire] and not keys[k.altFire] {
	sc_timeout_stop(jumpTime)
	instance_change(ob_hero_jumpfire, false)
	exit
} 
if keys[k.altFire] {
	sc_timeout_stop(jumpTime)
	instance_change(ob_hero_arrow_summon, false)
	exit
}

// Stopping on air
if not (keys[k.Left] or keys[k.Right]) {
	accelX = 0
}
stopFactor = 1

if feetcollision {
	sc_timeout_stop(jumpTime)
	instance_change(ob_hero, false)
}

if stamina < staminaMax {
	stamina += staminaRegenSpeed * dTime
} else {
	stamina = staminaMax
	staminaDepleted = false
}

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
