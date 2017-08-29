/// @desc Bounce

var dirs = [d.Up, d.Down, d.Left, d.Right]

for (var i=0; i<array_length_1d(dirs); i++) {
	var dir = dirs[i]
	if sc_hero_check_collision_mask(other.id, dir)
		break
}

if dir = d.Up {
	sc_timeout_stop(jumpTime)
	headcollision = true
} else
if dir = d.Down {
	feetcollision = true
}
if dir = d.Left
	leftcollision = true
if dir = d.Right
	rightcollision = true


