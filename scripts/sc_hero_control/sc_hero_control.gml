/// @desc ob_hero control implementation

var newAnim = idleAnim
var newForward = forward

var canJump = feetcollision
var canShoot = instance_exists(weapon)
var arrowJump = false
if instance_exists(ob_arrow) {
	arrowJump = ob_arrow.stepped and ob_arrow.sprang and canJump
}

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
		if feetcollision
			instance_change(ob_hero_fire, false)
		else
			instance_change(ob_hero_jumpfire, false)
		exit
	} //else
		//sc_weapon_firing(false)
	
	if keys[k.altFire] {
		instance_change(ob_hero_arrow_summon, false)
		exit
	}
} //else
	//sc_weapon_firing(false)


// Stopping on the ground
if not (keys[k.Left] or keys[k.Right]) and feetcollision {
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

if sprite_index != newAnim {
	sprite_index = newAnim
	mask_index = sp_hero_stand
	image_index = 0
	sc_timeout_start(idleTime)
}
if sc_timeout_over(idleTime)
	idle = true

forward = newForward
image_xscale = forward
