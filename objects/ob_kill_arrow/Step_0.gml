event_inherited()
/// @desc Process phases

if phase = ar.Disappear {
	sprite_index = sp_arrow
	if instance_exists(flare)
		flare.spawn = false
}

if instance_exists(flare) {
	flare.x = x
	flare.y = y
}