/// @desc Init values

accelX = 0
accelY = 0
speedX = 0
speedY = 0
stopFactor = 1  // not stopping 
grav = 0

maxspeedX = 0
maxspeedY = 0

// actual movement per frame
dX = 0 
dY = 0

w1 = x - bbox_left
w2 = bbox_right - x
h1 = y - bbox_top
h2 = bbox_bottom - y
