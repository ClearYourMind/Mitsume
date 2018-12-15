/// @desc
//event_inherited()
//event_perform_object(ob_moving, ev_step, ev_step_normal)


#region // control
//var newAnim = sp_hero_condor_stand

if keys[k.Up]
	accelY = -accelHi
if keys[k.Down]
	accelY = accelHi
if keys[k.Left] {
	forward = -1
	accelX = -accelHi
}
if keys[k.Right] {
	forward = 1
	accelX = accelHi
}

if keysPressed[k.Jump] or wantJump {
	wantJump = false 
	speedY = -jumpSpeed
	accelY = 0
	maxspeedY = maxspeedYFall
	grav = oGrav
	ob_arrow_scroll.image_angle = 0
	sc_play_sound(sn_jump, false)
	sc_timeout_start(jumpTime)
	y-=2
	instance_change(ob_hero_scroll_jump, false)
	exit
}

if keys[k.Fire]
	instance_change(ob_hero_scroll_fire, false)

#endregion

if forward
	sprite_index = sp_hero_condor_stand_r
else
	sprite_index = sp_hero_condor_stand_l

// move arrow
with ob_arrow_scroll {
	x = other.x + 8  + other.hspeed
	y = other.y + 20 + other.vspeed
	image_angle = 14
}

// stopping on air
stopFactor = 1
if not (keys[k.Left] or keys[k.Right]) {
	accelX = 0
	stopFactor = oStopFactor
}

// idle vertical movement
if not (keys[k.Up] or keys[k.Down]) or
	((keys[k.Up] and not canMoveUp) or
	(keys[k.Down] and not canMoveDown)) {
//	debugstr = string(speedY)+", "+string(accelY)
	accelY=accelLo * sign(accelY)
	if (abs(speedY)>maxspeedYIdle) {
		if (sign(speedY) = sign(accelY)) {
			accelY = accelLo * -sign(accelY)
		}
		speedY -= (accelHi * sign(speedY)) * dTime
//		debugstr += " STOPPING"
	}
} 

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
