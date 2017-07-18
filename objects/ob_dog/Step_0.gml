/// @desc process AI

/// AI
if not instance_exists(hero) {
	event_inherited()
	exit
}

var xDist = hero.x - x
var yDist = hero.y - y

var jumpPower = 0.6

// start modes
if newMode {
	newMode = false
	if mode = 0 {    // Idle
		phase = irandom(1)
	    if timeout <= 0 {
	        switch phase {    // start phase
	        case 0:        // bark
	            timeout = random(3)+1
	            forward = irandom(1)*2 - 1
	            sprite_index = sp_dog_idle
	            image_speed = 0.1
				accelX = 0
	            break
	        case 1:        // walk
	            timeout = random(1)+0.3
	            forward = irandom(1)*2 - 1
	            sprite_index = sp_dog_walk
	            image_speed = 0.05
	            maxspeedX = speed1
				accelX = oAccel * forward
	            break
	        }
	    } 
	}
	if mode = 1 {   // start attack
        sprite_index = sp_dog_walk
		image_speed = 0.1
		accelX = oAccel * forward
        maxspeedX = speed2
		phase = 0
	}
}


// process modes

if mode == 0 {   // idle
	if feetcollision 
		timeout-=dTime
	if timeout<=0 {
		mode = 0
		newMode = true
	}
		
	if phase == 1 {
		// jump over obstacle
		if sidecollision and feetcollision {
			speedY = -maxspeedY * jumpPower
			y-=2
			feetcollision = false
			timeout = timeout*0.25 - dTime
		}
	}
}

if mode == 1 {   // attack
	if sidecollision and feetcollision {
		// jump over obstacle
		speedY = -maxspeedY * jumpPower
		y-=2
		feetcollision = false
	}
	if abs(xDist) > 45 {
		phase= 0 
    } else {
		if phase = 0
        if feetcollision and abs(speedX) >= maxspeedX*0.75 {
			// jump
			speedY = -maxspeedY * jumpPower
			y-=2
			feetcollision = false
			phase = 1
	        sprite_index = sp_dog_walk
	        image_index = 0
			image_speed = 0
		}	
		if phase = 1 {
			if feetcollision {
				phase = 0
		        mode = 1
				newMode = true
			}
		}
    }
}


// ALWAYS
if feetcollision {   
	stopFactor = oStopFactor
} else
    stopFactor = 1

// check range ahead  
found = false
if (abs(xDist) <= xRange) and (abs(yDist) <= yRange) {
	
	if sign(xDist) = forward
	found = ( collision_line(x, y-20 , hero.x, hero.y , hero, false, true) and not
			  collision_line(x, y-20 , hero.x, hero.y , ob_wall, false, true) )
}

if found {
	if mode!=1 {
		mode = 1
		phase = 0
		newMode = true
	}
} else {
	if mode!=0
	if phase = 0 {
		mode = 0
		newMode = true
		timeout = 0
	}
}

image_xscale = forward

feetcollision = false
sidecollision = false



event_inherited()
