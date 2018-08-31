/// @desc Ride
var result = false

if speedY>=0 {
	result = sc_hero2_check_collision_mask(other.id, d.Down)
}

if result {
	y+=1.1
	feetcollision = true
}
