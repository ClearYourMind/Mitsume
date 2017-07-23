/// @desc Collect

/// Show value of coin
with instance_create_depth(x,y-16, depths.explosions, ob_explode_coin) {
   dropvalue = other.dropvalue
}

score += dropvalue
sc_play_sound(sn_coin3, false)
with ob_gui event_perform(ev_other, ev_user0)

instance_destroy()
