/// @desc

// Inherit the parent event
event_inherited();

image_xscale = forward

if feetcollision {
	stopFactor = oStopFactor
	if image_index>3 {
		image_index = 3
		image_speed = 0
	}
} else {
	if image_index>2.8
		image_index = 2.8
}
