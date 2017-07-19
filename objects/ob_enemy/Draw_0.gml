/// @desc Flash when hurt

//image_blend = c_white
draw_self()

if hurt {
	switch hurtstep {
	case 0:
		image_blend = $7B7BFF
		break
	case 1:
		image_blend = $FF7B7B
		break
	}
	
    var ox = x, oy = y;
    x += random(2)-1//0.5
    y += random(2)-1//0.5
    image_xscale = 1.05 * forward  
    image_yscale = 1.05   
    gpu_set_blendmode(bm_add)
		draw_self()
    x = ox; y = oy
    image_xscale = 1 * forward  
    image_yscale = 1
    gpu_set_blendmode(bm_normal)
}
