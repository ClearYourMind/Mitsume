event_inherited()
/// @desc Check status & process hurt

if strength<=0
	instance_destroy()

if hurt {
	if hurtstep < 7 {
		hurtstep++
	} else {
		hurt = false
		hurtstep = 0
		image_blend = c_white
	}
}

