/// @desc

event_perform_object(ob_moving, ev_step, ev_step_normal)

// move hero when on air and firing
if keys[k.Left] 
	accelX = -accel 
if keys[k.Right]
	accelX = accel

if keys[k.Fire] and not keys[k.altFire] {
	sc_weapon_firing(true)
	pauseTime = sc_timeout_new(afterShotTime)
	sc_timeout_start(pauseTime)
} else
	sc_weapon_firing(false)

// Stopping on air
if not (keys[k.Left] or keys[k.Right]) {
	accelX = 0
}
stopFactor = 1

if feetcollision 
	instance_change(ob_hero_fire, false)

if sc_timeout_over(pauseTime) {
	instance_change(ob_hero_jump, false)
}

// recover stamina
if stamina < staminaMax {
	if staminaDepleted
		stamina += staminaRegenSpeed * dTime
} else {
	stamina = staminaMax
	staminaDepleted = false
}

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
