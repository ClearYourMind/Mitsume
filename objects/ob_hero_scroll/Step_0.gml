/// @desc

// Inherit the parent event
event_perform_object(ob_moving, ev_step, ev_step_normal)
event_inherited()

canMoveUp    = y + (speedY+accelY)*dTime > view_h * 0.5
canMoveDown  = y + (speedY+accelY)*dTime < view_h * 0.6
canMoveLeft  = x + (speedX+accelX)*dTime > view_w * 0.25
canMoveRight = x + (speedX+accelX)*dTime < view_w * 0.75

// idle horizontal
if not (keys[k.Left] or keys[k.Right]) or // key released
	((keys[k.Left] and not canMoveLeft) or
	(keys[k.Right] and not canMoveRight)) {
	accelX=0
	stopFactor = oStopFactor
} else
	stopFactor = 1

// idle vertical movement
if not (keys[k.Up] or keys[k.Down]) or
	((keys[k.Up] and not canMoveUp) or
	(keys[k.Down] and not canMoveDown)) {
//	debugstr = string(speedY)+", "+string(accelY)
	accelY=accelLo * sign(accelY)
	if (abs(speedY)>maxspeedYLo) {
		if (sign(speedY) = sign(accelY)) {
			accelY = accelLo * -sign(accelY)
		}
		speedY -= (accelHi * sign(speedY)) * dTime
//		debugstr += " STOPPING"
	}
} 
