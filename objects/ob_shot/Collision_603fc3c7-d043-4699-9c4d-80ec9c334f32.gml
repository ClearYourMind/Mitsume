/// @desc Destroy shot

//with other
//	event_perform(ev_collision, ob_shot)

if other.vulnerable
	instance_destroy()
else {
	forward = -sign(other.x - x)
	sc_shot_recoil()
}

