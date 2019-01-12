/// @desc

//event_inherited()
//event_perform_object(ob_moving, ev_step, ev_step_normal)

canMoveLeft  = x + (speedX+accelX)*dTime > view_w * 0.25
canMoveRight = x + (speedX+accelX)*dTime < view_w * 0.75

if keys[k.Left] {
	forward = -1
	accelX = -accelHi
}
if keys[k.Right] {
	forward = 1
	accelX = accelHi
}
image_xscale = forward

if keys[k.Jump] {
	if not sc_timeout_over(jumpTime) {
	    speedY = -jumpSpeed
	}
} else 
	sc_timeout_stop(jumpTime)

if keys[k.Fire] {
	sc_timeout_stop(jumpTime)
	instance_change(ob_hero_scroll_jumpfire, false)
} else
	sc_weapon_firing(false)

// Stopping on air
stopFactor = 1
if not (keys[k.Left] or keys[k.Right]) 
	accelX = 0

// process stamina
if hero.stamina < hero.staminaMax {
	hero.stamina += hero.staminaRegenSpeed * dTime
} else {
	hero.stamina = hero.staminaMax
	hero.staminaDepleted = false
}

// stopping at the edges
event_perform_object(ob_hero_scroll, ev_step, ev_step_normal)

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
