/// @desc
event_inherited()

#region // control
var canMoveUp =   y +(speedY+accelY)*dTime > 50
var canMoveDown = y +(speedY+accelY)*dTime < room_height - 72
var newAnim = sp_hero_condor_stand

var idleMode = true

if keys[k.Up]
if canMoveUp {
	accelY = -accelHi
	idleMode = false
}
if keys[k.Down]
if canMoveDown {
	accelY = accelHi
	idleMode = false
}

if keys[k.Fire] {
	sc_weapon_firing(true)
	pauseTime = sc_timeout_new(afterShotTime)
	sc_timeout_start(pauseTime)
	pauseAnim = after.Shot
} else
	sc_weapon_firing(false)

// idle movement
if not (keys[k.Up] or keys[k.Down]) {
	accelY=accelLo * sign(accelY)
	idleMode = true 
}	

if idleMode {
//	debugstr = string(speedY)+", "+string(accelY)
	if (abs(speedY)>maxspeedYLo) {
		if (sign(speedY) = sign(accelY)) {
			accelY = accelLo * -sign(accelY)
		}
		speedY -= (accelHi * sign(speedY)) * dTime
//		debugstr += " STOPPING"
	}
} 
//else debugstr = ""

// paused animations
if not sc_timeout_over(pauseTime) {
	if pauseAnim = after.Shot {
		newAnim = sp_hero_condor_fire
	}
} else {
	pauseAnim = after.None
}

if sprite_index != newAnim {
	sprite_index = newAnim
	mask_index = sp_hero_condor_stand
//	image_index = 0
}

#endregion


// process stamina
if stamina < staminaMax {
	if staminaDepleted or not (pauseAnim = after.Shot)
		stamina += staminaRegenSpeed * dTime
} else {
	stamina = staminaMax
	staminaDepleted = false
}
