/// @desc ob_hero control implementation

var newAnim = idleAnim
var newForward = forward

var arrowJump = false
if instance_exists(ob_arrow) {
	arrowJump = ob_arrow.stepped and ob_arrow.sprang and feetcollision
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
	if feetcollision { 
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
		instance_change(ob_hero_jump, false)
		exit
	}   
}
if keys[k.Jump] {
	// arrow jump
	if arrowJump {
		speedY = -jumpSpeed*1.8
		y-=2
		instance_change(ob_hero_jump, false)
		exit
	}
}  
   
if feetcollision == false {
	instance_change(ob_hero_jump, false)
	exit
}

if instance_exists(weapon) 
if keys[k.Fire] and not keys[k.altFire] {
	if feetcollision
		instance_change(ob_hero_fire, false)
	else
		instance_change(ob_hero_jumpfire, false)
	exit
}
	
if keys[k.altFire] {
	instance_change(ob_hero_arrow_summon, false)
	exit
}

// Stopping on the ground
if not (keys[k.Left] or keys[k.Right]) and feetcollision {
    accelX = 0
	stopFactor = oStopFactor
}

if sprite_index != newAnim {
	sprite_index = newAnim
	mask_index = sp_hero_stand1
	image_index = 0
	sc_timeout_start(idleTime)
}
if sc_timeout_over(idleTime)
	idle = true

forward = newForward
image_xscale = forward
