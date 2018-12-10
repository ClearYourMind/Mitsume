/// @desc

//event_inherited()
event_perform_object(ob_moving, ev_step, ev_step_normal)

canMoveLeft  = x + (speedX+accelX)*dTime > view_w * 0.25
canMoveRight = x + (speedX+accelX)*dTime < view_w * 0.75

if keys[k.Left] {
	forward = -1
	if canMoveLeft 
		accelX = -accelHi
}
if keys[k.Right] {
	forward = 1
	if canMoveRight 
		accelX = accelHi
}

if keys[k.Jump] {
	if not sc_timeout_over(jumpTime) {
	    speedY = -jumpSpeed
		accelY = 0
	}
} else 
	sc_timeout_stop(jumpTime)

//if keys[k.Fire]
//	instance_change(ob_hero_scroll_fire, false)

// Stopping on air
if not (keys[k.Left] or keys[k.Right]) {
//or not (canMoveRIght or canMoveLeft) {
	accelX = 0
}
stopFactor = 1

// move arrow
with ob_arrow_scroll {
	x = other.x + 8  + other.hspeed
}


image_xscale = forward

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
