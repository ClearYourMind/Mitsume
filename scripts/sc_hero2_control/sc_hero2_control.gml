/// @desc ob_hero control implementation

var newAnim = sp_hero2_stand
var newForward = forward
var newIndex = image_index
mainMask = sp_hero2_stand

var canMove = not (keys[k.Fire] or keys[k.altFire]) and not hurt
			  and not sc_timeout_is_started(pauseTime)
var canJump = feetcollision and canMove
//canMove = canMove and not keys[k.Down]

var canShoot = not (hurt or pauseAnim = after.Shot)


if canMove {
	if keys[k.Down] {
		newAnim = sp_hero2_jump
		newIndex = 2
		mainMask = sp_hero2_jump
	} else {
		if keys[k.Left] {
		    newForward = -1
		    accelX = accel * newForward
		    newAnim = sp_hero2_move
		} 
		if keys[k.Right] {
		    newForward = 1
		    accelX = accel * newForward
		    newAnim = sp_hero2_move
		} 
	}
} else {
	// move hero when on air and firing
	if not hurt
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
	jumpCharged = keys[k.Down]
	if canJump { 
		wantJump = false
		if not jumpCharged {
			// do jump
			speedY = -jumpSpeed
			y -= 2
			sc_timeout_start(jumpTime)
			sc_play_sound(sn_arrow4, false)
			canJump = false
		}
	}
}
if jumpCharged {
	if not (keys[k.Jump] and keys[k.Down]) {
		if canJump {
			jumpCharged = false
			speedY = -jumpSpeedCharged
			y -= 2
			sc_play_sound(sn_arrow4, false)
			wantJump = false
		}
	} else
	if keys[k.Jump] {
		newAnim = sp_hero2_jump
		newIndex = 2
		mainMask = sp_hero2_jump
	}
} else if keys[k.Jump] {
	if not sc_timeout_over(jumpTime) {
	    speedY = -jumpSpeed
	}
} else {
	sc_timeout_stop(jumpTime)
	wantJump = false
}


   
if abs(speedY)>0 or feetcollision == false {
    newAnim = sp_hero2_jump
	newIndex = speedY<0 ? 0 : 1
}

if canShoot {
	if keys[k.Fire] and not keys[k.altFire] {
		pauseTime = sc_timeout_new(afterShotTime)
		sc_timeout_start(pauseTime)
		pauseAnim = after.Shot
	} 
}

// paused animations
if not sc_timeout_over(pauseTime) {
	if pauseAnim = after.Shot {
		if feetcollision
			newAnim = sp_hero2_fire
		else
			newAnim = sp_hero2_jumpfire
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

if not hurt {
	if sprite_index != newAnim {
		sprite_index = newAnim
		mask_index = mainMask
	}
	if newIndex <> image_index
		image_index = newIndex
	forward = newForward
}

image_xscale = forward
