/// @desc process AI

/// AI

var d;

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
	timeout-=dTime
	if timeout<=0 {
		mode = 0
		newMode = true
	}
	
	if phase == 1 {
		// jump
		if sidecollision and feetcollision {
			speedY = -maxspeedY*0.5
			y-=2
			feetcollision = false
		}
	}
	
	// check range ahead  
	var _x, _y, i = 0 
	var found = false

	repeat (range) {
	    i++
	    _x = x + 15*i*forward
	    _y = y - 16
	    if collision_point(_x, _y, hero, false, true) {
	        mode = 1     // start attack
			newMode = true
			found = true
	        break
	    }
	    if collision_point(_x, _y, ob_wall, false, true) {
	        break
	    }  
	}   
	
	
}

if mode == 1 {   // attack
	d = point_distance(x,y, hero.x, hero.y)
    if d > 70 {
        if sidecollision and feetcollision {
			// jump
			speedY = -maxspeedY * 0.5
			y-=2
			feetcollision = false
		}
    } else {
		if phase = 0
        if feetcollision and abs(speedX) > maxspeedX*0.5 {
			// jump
			speedY = -maxspeedY * 0.5
			y-=2
			feetcollision = false
			phase = 1
	        sprite_index = sp_dog_walk
	        image_index = 0
			image_speed = 0
		}	
		if phase = 1 {
			if feetcollision {
		        mode = 0
				newMode = true
		        timeout = 0
			}
		}
    }
    
}

// ALWAYS
if feetcollision {   
	stopFactor = oStopFactor
} else
    stopFactor = 1


image_xscale = forward

feetcollision = false
sidecollision = false



event_inherited()
