/// @desc Ride

var result = false

if speedY>0 {
	var result = sc_dog_check_collision_mask(other, d.Down)
}

if result {
	y+=1
	feetcollision = true	
}

