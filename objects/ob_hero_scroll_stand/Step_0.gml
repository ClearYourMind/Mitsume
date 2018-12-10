/// @desc
event_inherited()

#region // control
//var newAnim = sp_hero_condor_stand

if keys[k.Up]
if canMoveUp {
	accelY = -accelHi
}
if keys[k.Down]
if canMoveDown {
	accelY = accelHi
}
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

if keysPressed[k.Jump] or wantJump {
	wantJump = false 
	speedY = -jumpSpeed
	forward = 1
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

// process stamina
if hero.stamina < hero.staminaMax {
	hero.stamina += hero.staminaRegenSpeed * dTime
} else {
	hero.stamina = hero.staminaMax
	hero.staminaDepleted = false
}

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
