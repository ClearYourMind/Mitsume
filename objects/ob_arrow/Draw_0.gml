/// @desc Draw disappearing arrow

if phase = ar.Disappear {
	gpu_set_blendmode(bm_add)
	draw_self()
	gpu_set_blendmode(bm_normal)
} else {
	if flashing {
		if image_alpha = 1
			image_alpha = 0
		else
			image_alpha = 1
	} else
		image_alpha = 1
		
	draw_self()
	
}

