/// @desc Stop arrow


if headcollision and not arrow.isThrough {
	arrow.isThrough = true
	sc_timeout_start(arrow.throughTime)
	arrow.stepped = false
	feetcollision = false
} 

if arrow.isThrough
	exit

var resultDown = false
if arrow.phase = ar.Launch or arrow.phase = ar.Stay or arrow.phase = ar.Sag
if speedY>0 {
	resultDown = sc_hero_check_collision_mask(other.id, d.Down)
}

if resultDown {
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

