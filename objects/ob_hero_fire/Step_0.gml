/// @desc

event_perform_object(ob_moving, ev_step, ev_step_normal)

if keys[k.Fire] and not keys[k.altFire] {
	sc_weapon_firing(true)
	pauseTime = sc_timeout_new(afterShotTime)
	sc_timeout_start(pauseTime)
} else
	sc_weapon_firing(false)

if keys[k.Jump]
	wantJump = true

// stopping on the ground
accelX = 0
accelY = 0
stopFactor = oStopFactor

if not feetcollision {
	instance_change(ob_hero_jumpfire, false)
}

if sc_timeout_over(pauseTime)
	instance_change(ob_hero, false)  // ob_hero_stand

// recover stamina
if stamina < staminaMax {
	if staminaDepleted
		stamina += staminaRegenSpeed * dTime
} else {
	stamina = staminaMax
	staminaDepleted = false
}

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
