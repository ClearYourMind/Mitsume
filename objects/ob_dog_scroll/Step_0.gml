/// @desc

var xDist = hero.x - x;

if newMode {
	newMode = false
	image_speed = 1
	accelX = oAccel * forward
	phase = 0
}


// process phases

if abs(xDist) > 45 {
	phase= 0 
	newMode = true
} else {
	if phase = 0
    if feetcollision and abs(speedX) >= maxspeedX*0.5 and sign(speedX) = sign(xDist) {
		// jump
		speedY = -maxspeedY * jumpPower
		y-=2
		speedX *= 1.5
		feetcollision = false
		phase = 1
	    image_index = 0
		image_speed = 0
	}	
	if phase = 1 {
		if feetcollision {
			phase = 0
			newMode = true
		}
	}
}


// ALWAYS
if feetcollision {   
	stopFactor = oStopFactor
} else
    stopFactor = 1

// check range ahead  
if sign(xDist) != forward {
	if feetcollision {
		forward = sign(xDist)
		newMode = true
	}
}

image_xscale = forward

feetcollision = false
sidecollision = false

event_perform_object(ob_enemy_scroll, ev_step, ev_step_normal)
