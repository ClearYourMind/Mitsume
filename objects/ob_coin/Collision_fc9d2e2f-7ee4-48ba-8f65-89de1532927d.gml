/// @desc Collect

/// Show value of coin

if speedY > 0 {

	with instance_create_depth(x,y-16, depths.explosions, ob_explode_coin) {
	   dropvalue = other.dropvalue
	}

	score += dropvalue
	sc_play_sound(sn_coin3, false)
	sc_gui_update()

	instance_destroy()
}
