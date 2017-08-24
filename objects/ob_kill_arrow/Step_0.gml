event_inherited()
/// @desc Process phases

if not (phase = ar.Recoil) {
	if instance_exists(flare)
		flare.spawn = true
}

if phase = ar.Recoil {
	image_angle += imageSpeed * dTime
}

if phase = ar.Disappear {
	sprite_index = sp_arrow
	if instance_exists(flare)
		flare.spawn = false
}
