/// @desc Calculate speeds

//if abs(speedX+accelX)>0.001 or abs(speedY+accelY)>0.001
if abs(accelX) > 0 {
	speedX += accelX * dTime
	if abs(speedX) > maxspeedX
		speedX = maxspeedX * sign(speedX)
}
if accelX = 0
if stopFactor != 1
	speedX *= power(stopFactor, dTime)


if abs(accelY) > 0 {
	speedY += accelY * dTime
}
speedY += grav * dTime
if abs(speedY) > maxspeedY
	speedY = maxspeedY * sign(speedY)

hspeed = min(totalMaxSpeed, speedX * dTime)
vspeed = min(totalMaxSpeed, speedY * dTime)

