/// @desc Ride
var result = false

if speedY>=0 {
	result = sc_hero_check_collision_mask(other.id, d.Down)
}

if result {
	y+=1.5
	feetcollision = true
}
