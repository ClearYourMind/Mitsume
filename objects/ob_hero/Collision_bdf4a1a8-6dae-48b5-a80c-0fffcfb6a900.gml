/// @desc Bounce

//other.image_blend = c_red
image_xscale = 1
var result = sc_check_collision_mask(other)
image_xscale = forward
mask_index = sp_hero_stand

if result = d.Up {
	_jumpTime = 0
} else
if result = d.Down {
	feetcollision = true
}
