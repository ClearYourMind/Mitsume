/// @desc ob_hero control implementation

var newAnim = sp_hero2_stand
var newForward = forward

var canMove = not (keys[k.Fire] or keys[k.altFire]) and not hurt
			  and not sc_timeout_is_started(pauseTime)
var canJump = feetcollision and canMove
//canMove = canMove and not keys[k.Down]

var canShoot = instance_exists(weapon) and not hurt
var arrowJump = false
if instance_exists(arrow) {
	arrowJump = arrow.stepped and arrow.sprang and canJump
}


if canMove {
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
	if canJump { 
		jumpCharged = keys[k.Down]
		if jumpCharged {
			newAnim = sp_hero2_jump
			image_index = 2
		} else { 
			wantJump = false
			// do jump
			speedY = -jumpSpeed
			y -= 2
			sc_timeout_start(jumpTime)
			sc_play_sound(sn_jump, false)
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
    newAnim = sp_hero2_jump;
	if speedY < 0 image_index = 0 else image_index = 1
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
		if not instance_exists(arrow)
			arrow = instance_create_depth(0,0, depths.shots, arrowObject)
		newAnim = sp_hero_arrow
		image_index = 0
		if arrow.phase = ar.Hold {
			pauseTime = sc_timeout_new(afterLaunchTime)
			sc_timeout_start(pauseTime)
			pauseAnim = after.Launch
		}
		if arrow.phase = ar.Stay
			arrow.phase = ar.Recall
	}
} else
	sc_weapon_firing(false)


// paused animations
if not sc_timeout_over(pauseTime) {
	if pauseAnim = after.Shot {
		if feetcollision
			newAnim = sp_hero2_fire
		else
			newAnim = sp_hero2_jumpfire
	}
	if not keys[k.altFire]
	if pauseAnim = after.Launch {
		newAnim = sp_hero_arrow
		image_index = 1
	}
} else {
	pauseAnim = after.None
}


// releasing arrow
if not (canShoot and keys[k.altFire]) {
	if instance_exists(arrow) {
	    if (arrow.phase = ar.Appear) or (arrow.phase = ar.Recall)
			arrow.phase = ar.Disappear
	    if arrow.phase = ar.Hold {
	        arrow.phase = ar.LaunchBegin
	        sc_play_sound(sn_arrow2, false)
	    }
	}
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
		mask_index = sp_hero2_stand
		image_index = 0
	}
	forward = newForward
}

image_xscale = forward
