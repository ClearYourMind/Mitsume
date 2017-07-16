/// @desc Move vertically in loop

if y > initPos + maxPos {
	y = initPos + maxPos - vspeed
	speedY = -speedY
}

if y < initPos + minPos {
	y = initPos + minPos - vspeed
	speedY = -speedY
}

event_inherited()
