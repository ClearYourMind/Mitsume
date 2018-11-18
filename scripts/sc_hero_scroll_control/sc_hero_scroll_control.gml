var newAnim = sp_hero_condor_stand

var canMove = true

if canMove {
	
}

// Stopping on air
//if not (keys[k.Left] or keys[k.Right]) {
//	accelX = 0
//}
//if not feetcollision {
//	stopFactor = 1
//}


if not hurt {
	if sprite_index != newAnim {
		sprite_index = newAnim
		mask_index = sp_hero_condor_stand
		image_index = 0
	}
}
