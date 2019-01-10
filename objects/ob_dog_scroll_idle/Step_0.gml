/// @desc

if xDist > 45 {
	// run
	accelX = oAccel
	image_speed = 1
	instance_change(ob_dog_scroll_run, false)
}

// Inherit the parent event
event_inherited();
