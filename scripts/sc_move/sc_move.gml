/// @desc Moves ob_moving by speed tied to time

if abs(accelX) > 0 {
	speedX += accelX * dTime
	if abs(speedX) > maxspeedX
		speedX = maxspeedX * sign(speedX)
}
if accelX = 0
	speedX *= power(stopFactor, dTime)

hspeed = min(totalMaxSpeed, speedX * dTime)
vspeed = min(totalMaxSpeed, speedY * dTime)

