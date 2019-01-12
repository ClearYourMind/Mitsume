/// @desc

canMoveUp    = y + (speedY+accelY)*dTime > view_h * 0.33
canMoveDown  = y + (speedY+accelY)*dTime < view_h * 0.6
canMoveLeft  = x + (speedX+accelX)*dTime > view_w * 0.1
canMoveRight = x + (speedX+accelX)*dTime < view_w * 0.9

// stop horizontal
if not canMoveRight {
	accelX = -accelHi	
} else
if not canMoveLeft {
	accelX = accelHi
}


// stop vertical
if (accelY > 0 and not canMoveDown) or
   (accelY < 0 and not canMoveUp)
	accelY = accelLo * -sign(accelY)

event_perform_object(ob_moving, ev_step, ev_step_normal)
