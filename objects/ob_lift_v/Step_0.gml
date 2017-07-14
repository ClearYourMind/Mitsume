/// @desc Move vertically in loop

y += moveSpeed * dTime

if y > initPos + maxPos {
	y = initPos + maxPos
	moveSpeed = -moveSpeed
}

if y < initPos + minPos {
	y = initPos + minPos
	moveSpeed = -moveSpeed
}
