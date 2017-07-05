/// @desc Moves ob_moving by speed tied to time

// check if object is ancestor of "ob_moving"
if not object_is_ancestor(object_index, ob_moving) exit

if abs(accelX) > 0 {
	speedX += accelX * dTime
	if abs(speedX) > maxspeedX
		speedX = maxspeedX * sign(speedX)
}
if accelX = 0
	speedX *= power(stopFactor, dTime)

hspeed = min(totalMaxSpeed, speedX * dTime)
vspeed = min(totalMaxSpeed, speedY * dTime)

