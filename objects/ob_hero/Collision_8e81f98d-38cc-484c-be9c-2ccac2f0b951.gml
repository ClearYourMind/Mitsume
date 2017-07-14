/// @desc Ride
var result = false

if not headcollision 
if speedY>0 {
	image_xscale = 1

	var result = sc_check_collision_mask(other, d.Down)

	image_xscale = forward
	mask_index = sp_hero_stand
}

if result {
	y+=1
	feetcollision = true	
}
