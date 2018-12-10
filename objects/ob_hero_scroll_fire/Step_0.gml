/// @desc

// Inherit the parent event
event_inherited();

if keys[k.Up]
if canMoveUp {
	accelY = -accelHi
}
if keys[k.Down]
if canMoveDown {
	accelY = accelHi
}

if keys[k.Jump]
	wantJump = true
	
if keys[k.Fire] {
	sc_weapon_firing(true)
	pauseTime = sc_timeout_new(afterShotTime)
	sc_timeout_start(pauseTime)
} else
	sc_weapon_firing(false)

if sc_timeout_over(pauseTime)
	instance_change(ob_hero_scroll_stand, false)  // ob_hero_stand

if forward
	sprite_index = sp_hero_condor_fire_r
else
	sprite_index = sp_hero_condor_fire_l

// move arrow
with ob_arrow_scroll {
	x = other.x + 8  + other.hspeed
	y = other.y + 20 + other.vspeed
	image_angle = 14
}
 
// process stamina
if hero.stamina < hero.staminaMax {
	if hero.staminaDepleted 
		hero.stamina += hero.staminaRegenSpeed * dTime
} else {
	hero.stamina = hero.staminaMax
	hero.staminaDepleted = false
}

// idle horizontal
accelX=0
stopFactor = oStopFactor

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
