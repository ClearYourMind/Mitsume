/// @desc Bounce

var dirs = [d.Up, d.Down, d.Left, d.Right]
var res_dir = d.None

for (var i=0; i<array_length_1d(dirs); i++) {
	if sc_hero_check_collision_mask(other.id, dirs[i]) {
		res_dir = dirs[i]
		break
	}
}

switch res_dir {
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

