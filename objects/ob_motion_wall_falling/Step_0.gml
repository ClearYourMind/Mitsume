event_inherited()
/// @desc Fall, Rise, Move childs and motionLayer

if collisionResult[1] {
	y -= vspeed
	switch phase {
	case 0:
		grav = 0
		speedY = 0
		sc_timeout_start(waitTime)
		break
	case 1:
		speedY = 0
		sc_timeout_start(waitTime)
		break
	}
}

if sc_timeout_is_started(waitTime) and sc_timeout_over(waitTime) {
	switch phase {
	case 0:
		speedY = -maxspeedY * 0.1
		phase = 1
		sc_timeout_stop(waitTime)
		break
	case 1:
		grav = oGrav
		phase = 0
		sc_timeout_stop(waitTime)
		break
	}
}

/// Move childs
for (var i=0; i<array_length_1d(childObjects); i++)
if instance_exists(childObjects[i])
	childObjects[i].y = childObjects[i]._oY + (y - _oY)
	
/// Move motionLayer

layer_y(motionLayer, y - _oY)

