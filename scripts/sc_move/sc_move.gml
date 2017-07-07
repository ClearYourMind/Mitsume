/// @desc Sets movement speed of ob_moving tied to time

// check if object is ancestor of "ob_moving"
if not object_is_ancestor(object_index, ob_moving) exit

if abs(accelX) > 0 {
	speedX += accelX * dTime
	if abs(speedX) > maxspeedX
		speedX = maxspeedX * sign(speedX)
}
if accelX = 0
	speedX *= power(stopFactor, dTime)


if abs(accelY) > 0 {
	speedY += accelY * dTime
	if abs(speedY) > maxspeedY
		speedY = maxspeedY * sign(speedY)
}
if accelY = 0
	speedY *= power(stopFactor, dTime)

dX = min(totalMaxSpeed, speedX * dTime)
dY = min(totalMaxSpeed, speedY * dTime)


