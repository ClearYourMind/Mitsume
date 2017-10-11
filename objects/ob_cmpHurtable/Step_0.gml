/// @desc

if hurt {
	if hurtstep < 7 {
		hurtstep++
	} else {
		hurt = false
		hurtstep = 0
		image_blend = c_white
	}
}
