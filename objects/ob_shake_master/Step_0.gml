/// @desc

if shakeStarted {
	angle += shakeSpeed
	oAmount = amount
	amount = sin(angle)*amplitude
	camera_set_view_pos(view_camera[0], view_x, view_y + amount )
	if sign(oAmount) != sign(amount) {
		amplitude *= fadeoff
		shakeStarted = amplitude > 1
	}
} else {
	amount = 0 
}

