/// @desc Bounce

image_xscale = 1

var dirs = [d.Up, d.Down, d.Left, d.Right]
for (var i=0; i<array_length_1d(dirs); i++) {
	var dir = dirs[i]
	if sc_check_collision_mask(other, dir)
		break
}

image_xscale = forward
mask_index = sp_hero_stand


if dir = d.Up {
	_jumpTime = 0
	headcollision = true
} else
if dir = d.Down {
	feetcollision = true
}
