/// @desc

if feetcollision {
	if (xDist <= 45) and (xDist > 0) {
	    if (speedX >= maxspeedX*0.5) {
			// jump
			speedY = -maxspeedY * jumpPower
			y-=2
			speedX = maxspeedX
			accelX = 0
			feetcollision = false
			image_speed = 0
			image_index = 0
			instance_change(ob_dog_scroll_jump, false)
		}
	} else if (xDist < 0) {
		// sit
		accelX = 0
		speedY = 0
		image_speed = 1
		instance_change(ob_dog_scroll_idle, false)
	}
}

// Inherit the parent event
event_inherited();
