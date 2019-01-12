/// @desc

//event_perform_object(ob_moving, ev_step, ev_step_normal)

canMoveLeft  = x + (speedX+accelX)*dTime > view_w * 0.25
canMoveRight = x + (speedX+accelX)*dTime < view_w * 0.75

if keys[k.Left] {
	accelX = -accelHi
}
if keys[k.Right] {
	accelX = accelHi
}

if keys[k.Fire] {
	sc_weapon_firing(true)
	pauseTime = sc_timeout_new(afterShotTime)
	sc_timeout_start(pauseTime)
} else
	sc_weapon_firing(false)

if sc_timeout_over(pauseTime)
	instance_change(ob_hero_scroll_jump, false)

// Stopping on air
stopFactor = 1
if not (keys[k.Left] or keys[k.Right]) 
	accelX = 0

// process stamina
if hero.stamina < hero.staminaMax {
	if hero.staminaDepleted
		hero.stamina += hero.staminaRegenSpeed * dTime
} else {
	hero.stamina = hero.staminaMax
	hero.staminaDepleted = false
}

// stopping at the edges
event_perform_object(ob_hero_scroll, ev_step, ev_step_normal)

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
