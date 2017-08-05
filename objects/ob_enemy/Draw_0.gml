/// @desc Flash when hurt

if not hurt {
	image_blend = c_white
	draw_self()
}

if hurt {
	switch hurtstep mod 4 {
	case 0:
		image_blend = $BBBBFF
		draw_self()
		image_blend = $0000FF
		break
	case 1:
		image_blend = $FFBBBB
		draw_self()
		image_blend = $FF0000
		break
	case 2:
		image_blend = $BBBBFF
		draw_self()
		image_blend = $0000FF
		break
	case 3:
		draw_self()
		image_blend = c_white
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
