/// @desc

//event_inherited()
event_perform_object(ob_moving, ev_step, ev_step_normal)

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
}

// Stopping on air
if not (keys[k.Left] or keys[k.Right]) 
	accelX = 0
if not (canMoveRight and canMoveLeft) {
	accelX = 0
	stopFactor = oStopFactor
} else
	stopFactor = 1

// move arrow
with ob_arrow_scroll {
	x = other.x + 8  + other.hspeed
}

// process stamina
if hero.stamina < hero.staminaMax {
	hero.stamina += hero.staminaRegenSpeed * dTime
} else {
	hero.stamina = hero.staminaMax
	hero.staminaDepleted = false
}


event_perform_object(ob_heroparent, ev_step, ev_step_normal)
