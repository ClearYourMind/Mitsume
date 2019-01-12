/// @desc before hurt

hurt = true
grav = oGrav

accelX = 0
accelY = 0
maxspeedY = maxspeedYFall

if forward > 0 
	speedX = 0
else
	speedX = -scrollSpeed * 1.5
	
speedY = -maxspeedX * 2
y -= 2
health--
image_index = 0

with ob_arrow_scroll
	instance_change(ob_arrow_scroll_hurt, false)

