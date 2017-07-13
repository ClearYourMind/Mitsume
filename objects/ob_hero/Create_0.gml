event_inherited()

/// @desc Init values

enum a {
	Stand,
	Walk,
	Fire,
	Jump,
	JumpFire
}

oGrav = 550  // weight
oStopFactor = 0.01

// 0 -> accel  for 1 sec
// maxspeed is reached at time = maxspeed/accel

accel = 200

maxspeedX = 200
maxspeedY = totalMaxSpeed

jumpSpeed = 150
jumpTime = 0.2 //sec
_jumpTime = 0 // current

feetcollision = true


image_speed = 0.1
 