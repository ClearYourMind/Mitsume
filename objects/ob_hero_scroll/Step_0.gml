/// @desc

canMoveUp    = y + (speedY+accelY)*dTime > view_h * 0.33
canMoveDown  = y + (speedY+accelY)*dTime < view_h * 0.6
canMoveLeft  = x + (speedX+accelX)*dTime > view_w * 0.25
canMoveRight = x + (speedX+accelX)*dTime < view_w * 0.75

// stop horizontal
if (accelX > 0 and not canMoveRight) or
   (accelX < 0 and not canMoveLeft) {
	accelX=0
	stopFactor = oStopFactor
}

// stop vertical
if (accelY > 0 and not canMoveDown) or
   (accelY < 0 and not canMoveUp)
	accelY = accelLo * -sign(accelY)

event_perform_object(ob_moving, ev_step, ev_step_normal)
