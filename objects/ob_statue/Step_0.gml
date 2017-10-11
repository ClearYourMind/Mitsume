event_inherited()

event_perform_object(ob_cmpHurtable, ev_step, ev_step_normal)
/// @desc

if phase = 0 {
	#region /// Start appearing
	sc_play_sound(sn_warp)
	sc_timeout_start(appearTime)
	flashing = true
	phase = 1
	#endregion
}
if phase = 1 {
	#region /// Stop appearing
	if sc_timeout_over(appearTime) {
		flashing = false
		phase = 2
	}
	#endregion
}
if phase = 2 {
	#region /// Process statue
	if strength <=0 {
		flashing = true
		sc_timeout_start(appearTime)
		sc_timeout_start(dropTime, true)
		phase = 3
	}
	#endregion
	speedY = maxspeedY * sin(get_timer()*0.0000025)
}
if phase = 3 {
	#region /// Disappearing
	if sc_timeout_over(appearTime)
		instance_destroy()
	if sc_timeout_over(dropTime) {
		with instance_create_depth(x, y, depths.general, ob_coin)
			dropvalue = irandom_range(100, 500)
	}
	#endregion
}
