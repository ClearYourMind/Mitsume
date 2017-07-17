/// @desc process AI

/// AI
if not instance_exists(hero) {
	event_inherited()
	exit
}

var d = point_distance(x,y, hero.x, hero.y)
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

//debugstr = "mode = "+string(mode)+"; phase = "+string(phase)

if mode == 1 {   // attack
	if sidecollision and feetcollision {
		// jump over obstacle
		speedY = -maxspeedY * jumpPower
		y-=2
		feetcollision = false
	}
	if d > 45 {
		phase= 0 
		show_debug_message("Approaching")
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
			show_debug_message("Begin of attack")
		}	
		if phase = 1 {
			if feetcollision {
		        mode = 0
				newMode = true
		        timeout = 0
				show_debug_message("End of attack")
			}
		}
    }
//	debugstr += "; d = "+string(d)
}


// ALWAYS
if feetcollision {   
	stopFactor = oStopFactor
} else
    stopFactor = 1

// check range ahead  
if d <= range {
	var found = false
	
	if sign(hero.x-x) = forward
	found = ( collision_line(x, y-5 , hero.x, y-5 , hero, false, true) and not
			  collision_line(x, y-5 , hero.x, y-5 , ob_wall, false, true) ) or
			( collision_line(x, y-20, hero.x, y-20, hero, false, true) and not
			  collision_line(x, y-20, hero.x, y-20, ob_wall, false, true) )
			  
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
}

image_xscale = forward

feetcollision = false
sidecollision = false



event_inherited()
