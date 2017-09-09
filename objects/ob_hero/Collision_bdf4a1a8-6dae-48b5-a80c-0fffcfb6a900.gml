/// @desc Bounce

var dirs = [d.Up, d.Down, d.Left, d.Right]

for (var i=0; i<array_length_1d(dirs); i++) {
	var dir = dirs[i]
	if sc_hero_check_collision_mask(other.id, dir)
		break
}

switch dir {
case d.Up:
	sc_timeout_stop(jumpTime)
	headcollision = true
	break 
case d.Down:
	feetcollision = true
	break
case d.Left:
	leftcollision = true
	break
case d.Right:
	rightcollision = true
	break
}

