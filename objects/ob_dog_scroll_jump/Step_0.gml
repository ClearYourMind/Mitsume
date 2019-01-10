/// @desc

if feetcollision {
	// run
	image_speed = 1
	accelX = oAccel
	instance_change(ob_dog_scroll_run, false)
}

// Inherit the parent event
event_inherited();
