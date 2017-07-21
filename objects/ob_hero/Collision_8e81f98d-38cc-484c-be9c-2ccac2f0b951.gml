/// @desc Ride
var result = false

if not headcollision 
if speedY>0 {
	result = sc_hero_check_collision_mask(other, d.Down)
}

if result {
	y+=1.5
	feetcollision = true	
}
