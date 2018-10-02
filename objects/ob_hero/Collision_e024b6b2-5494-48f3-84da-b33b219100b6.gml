/// @desc Stop arrow


if headcollision and not ob_arrow.isThrough {
	ob_arrow.isThrough = true
	sc_timeout_start(ob_arrow.throughTime)
	ob_arrow.stepped = false
	feetcollision = false
} 

if ob_arrow.isThrough
	exit

var resultDown = false
if ob_arrow.phase = ar.Launch or ob_arrow.phase = ar.Stay or ob_arrow.phase = ar.Sag
if speedY>0 {
	resultDown = sc_hero_check_collision_mask(other.id, d.Down)
}

if resultDown {
	y += 1.5
	feetcollision = true	
	ob_arrow.stepped = true
	if ob_arrow.phase = ar.Stay {
		ob_arrow.phase = ar.SagBegin
	}
	if ob_arrow.phase = ar.Launch {
		ob_arrow.phase = ar.Stay
	}
} 

