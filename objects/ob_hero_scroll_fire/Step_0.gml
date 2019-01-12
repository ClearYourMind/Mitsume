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

// idle horizontal
accelX=0
stopFactor = oStopFactor

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
	if hero.staminaDepleted 
		hero.stamina += hero.staminaRegenSpeed * dTime
} else {
	hero.stamina = hero.staminaMax
	hero.staminaDepleted = false
}

event_perform_object(ob_heroparent, ev_step, ev_step_normal)
