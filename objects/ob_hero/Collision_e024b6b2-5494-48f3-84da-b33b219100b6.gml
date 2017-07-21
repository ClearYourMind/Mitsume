/// @desc Stop arrow

var result = false
if arrow.phase = ar.Launch or arrow.phase = ar.Stay or arrow.phase = ar.Sag
if speedY>0 {
	result = sc_hero_check_collision_mask(other, d.Down)
}

if result {
	y += 1.5
	feetcollision = true	
	arrow.stepped = true
	if arrow.phase = ar.Stay {
		arrow.phase = ar.SagBegin
	}
	if arrow.phase = ar.Launch {
		arrow.phase = ar.Stay
	}
}

