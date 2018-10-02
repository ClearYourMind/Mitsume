/// @desc ob_hero control implementation

var newAnim = sp_hero_stand
var newForward = forward

var canMove = not (keys[k.Fire] or keys[k.altFire]) and not hurt
			  and not sc_timeout_is_started(pauseTime)
var canJump = feetcollision and canMove
var canShoot = instance_exists(weapon) and not hurt
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
		if not instance_exists(ob_arrow)
			instance_create_depth(0,0, depths.shots, arrowObject)
		newAnim = sp_hero_arrow
		image_index = 0
		if ob_arrow.phase = ar.Hold {
			pauseTime = sc_timeout_new(afterLaunchTime)
			sc_timeout_start(pauseTime)
			pauseAnim = after.Launch
		}
		if ob_arrow.phase = ar.Stay
			ob_arrow.phase = ar.Recall
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
	if instance_exists(ob_arrow) {
	    if (ob_arrow.phase = ar.Appear) or (ob_arrow.phase = ar.Recall)
			ob_arrow.phase = ar.Disappear
	    if ob_arrow.phase = ar.Hold {
	        ob_arrow.phase = ar.LaunchBegin
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
		mask_index = sp_hero_stand
		image_index = 0
	}
	forward = newForward
}

image_xscale = forward
