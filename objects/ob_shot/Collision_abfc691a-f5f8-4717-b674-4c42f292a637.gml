/// @desc

if other.vulnerable
	instance_destroy()
else {
	forward = -sign(other.x - x)
	sc_shot_recoil()
}
