event_inherited()
/// @desc Process phases

if instance_exists(flare)
	flare.spawn = true

if phase = ar.Disappear {
	sprite_index = sp_arrow
	if instance_exists(flare)
		flare.spawn = false
}
