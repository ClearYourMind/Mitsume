event_inherited()

/// @desc Init values

oGrav = 800  // weight
grav = 0

oStopFactor = power(10, -1)

// 0 -> accel  for 1 sec
// maxspeed is reached at time = maxspeed/accel

accel = 350

maxspeedX = 85
maxspeedYFall = 400
maxspeedYMove = 125
maxspeedYIdle = 32
maxspeedY = maxspeedYMove


jumpSpeed = 185
jumpTime = sc_timeout_new(0.17) 

// wantJump added to prevent eating away pressed jump button
// while pauseAnim timer
wantJump = false 

recoverTime = sc_timeout_new(2) 

afterShotTime = 0.15
afterLaunchTime = 0.3
pauseTime = noone

feetcollision = true
image_speed = 1

canMoveDown = false
canMoveUp = false
canMoveLeft = false
canMoveRight = false
