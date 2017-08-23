/// @desc Destroy when away by 0.25 of view_w

if (x > view_x+view_w*1.25) or (x < view_x-view_w*0.25)
	instance_destroy()

