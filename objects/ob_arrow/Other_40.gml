/// @desc Destroy at 1.25 of view_w away

if (x > view_x+view_w*1.25) or (x < view_x-view_w*0.25)
if phase = ar.Launch
	instance_destroy()
