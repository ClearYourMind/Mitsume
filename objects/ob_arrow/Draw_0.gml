/// @desc Draw disappearing arrow

if flashing
	isVisible = not isVisible
else
	isVisible = true

if isVisible {
	if phase = ar.Disappear {
		gpu_set_blendmode(bm_add)
		draw_self()
		gpu_set_blendmode(bm_normal)
	} else
		draw_self()
}
