/// @desc Bounce

if speedY>0
	var dirs = [d.Down, d.Left, d.Right]
else
	var dirs = [d.Up, d.Down, d.Left, d.Right]

for (var i=0; i<array_length_1d(dirs); i++) {
	var dir = dirs[i]
	if sc_dog_check_collision_mask(other, dir)
		break
}

if dir = d.Down 
	feetcollision = true

if (dir = d.Right) or (dir = d.Left) {
	sidecollision = true
}
