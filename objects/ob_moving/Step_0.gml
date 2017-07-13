/// @desc Calculate speeds

//if abs(speedX+accelX)>0.001 or abs(speedY+accelY)>0.001
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
speedY += grav * dTime

dX = min(totalMaxSpeed, speedX * dTime)
dY = min(totalMaxSpeed, speedY * dTime)

