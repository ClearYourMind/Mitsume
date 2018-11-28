/// @desc ob_hero control implementation

var newAnim = sp_hero_stand
var newForward = forward

var canMove = not keys[k.Fire]
			  and not sc_timeout_is_started(pauseTime)
var canJump = feetcollision and canMove
var canShoot = instance_exists(weapon)
var arrowJump = false
if instance_exists(ob_arrow) {
	arrowJump = ob_arrow.stepped and ob_arrow.sprang and canJump
}


if canMove {
	if keys[k.Left] {
	    newForward = -1
	    accelX = accel * newForward
	    newAnim = sp_hero_move
	} 
	if keys[k.Right] {
	    newForward = 1
	    accelX = accel * newForward
	    newAnim = sp_hero_move
	} 
} else {
	// move hero when on air and firing
	if not feetcollision and pauseAnim = after.Shot {
		if keys[k.Left] {
		    newForward = -1
		    accelX = accel * newForward
		} 
		if keys[k.Right] {
		    newForward = 1
		    accelX = accel * newForward
		} 
	}
}

if keysPressed[k.Jump] or wantJump {
	wantJump = true
	if canJump { 
		wantJump = false
		// arrow jump
		if arrowJump {
			speedY = -jumpSpeed*1.8
		} else {
			speedY = -jumpSpeed
			sc_play_sound(sn_jump, false)
			sc_timeout_start(jumpTime)
		}
		y-=2
	    newAnim = sp_hero_jump
	    canJump = false
	}   
}
if keys[k.Jump] {
	// arrow jump
	if arrowJump {
		speedY = -jumpSpeed*1.8
		y-=2
	    newAnim = sp_hero_jump
	    canJump = false
	}
	if not sc_timeout_over(jumpTime) {
	    speedY = -jumpSpeed
	}
} else {
	sc_timeout_stop(jumpTime)
	wantJump = false
}  
   
if abs(speedY)>0 or feetcollision == false {
    newAnim = sp_hero_jump
}

if canShoot {
	if keys[k.Fire] and not keys[k.altFire] {
		if not (pauseAnim = after.Launch) {
			sc_weapon_firing(true)
			pauseTime = sc_timeout_new(afterShotTime)
			sc_timeout_start(pauseTime)
			pauseAnim = after.Shot
		}
	} else
		sc_weapon_firing(false)
	
	if keys[k.altFire] {
		accelX = 0
		accelY = 0
		instance_change(ob_hero_arrow_summon, false)
		exit
	}
} else
	sc_weapon_firing(false)


// paused animations
if not sc_timeout_over(pauseTime) {
	if pauseAnim = after.Shot {
		if feetcollision
			newAnim = sp_hero_fire
		else
			newAnim = sp_hero_jumpfire
	}
} else {
	pauseAnim = after.None
}

// Stopping on the ground
if (not (keys[k.Left] or keys[k.Right]) or not canMove) and feetcollision {
    accelX = 0
	stopFactor = oStopFactor
}

// Stopping on air
if not (keys[k.Left] or keys[k.Right]) {
	accelX = 0
}
if not feetcollision {
	stopFactor = 1
}

// Don't turn hero when on air and firing
if not feetcollision and pauseAnim = after.Shot {
	newForward = forward
}


if sprite_index != newAnim {
	sprite_index = newAnim
	mask_index = sp_hero_stand
	image_index = 0
}
forward = newForward
image_xscale = forward
