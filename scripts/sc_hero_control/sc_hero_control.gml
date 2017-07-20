/// @desc ob_hero control implementation

var newAnim = sp_hero_stand
var newForward = forward

canMove = not (keys[k.Fire] or keys[k.altFire]) and not hurt
		  and not sc_timeout_is_started(aftershotTime)
canJump = feetcollision and canMove
canShoot = instance_exists(weapon) and not hurt

// Кнопки
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
	if not feetcollision and sc_timeout_is_started(aftershotTime) {
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
if keys[k.Jump] {
	if canJump { 
	    speedY = -jumpSpeed
		y-=2
	    newAnim = sp_hero_jump
		sc_timeout_start(jumpTime)
	    canJump = false
	    sc_play_sound(sn_jump, false)
	}    
	if not sc_timeout_over(jumpTime) {
	    speedY = -jumpSpeed
	}
} else {
	sc_timeout_stop(jumpTime)
	//_jumpTime = 0
	//canJump = true
}  
   
if abs(speedY)>0 or feetcollision == false {
    newAnim = sp_hero_jump
}

if canShoot {
	if keys[k.Fire] {
		if feetcollision
			newAnim = sp_hero_fire
		else
			newAnim = sp_hero_jumpfire
		with weapon	event_perform(ev_other, ev_user0)
		sc_timeout_start(aftershotTime)
	} else
		with weapon event_perform(ev_other, ev_user1)
	if not sc_timeout_over(aftershotTime) {
		if feetcollision
			newAnim = sp_hero_fire
		else
			newAnim = sp_hero_jumpfire
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
if not feetcollision and sc_timeout_is_started(aftershotTime) {
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
