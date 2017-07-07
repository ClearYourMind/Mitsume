event_inherited()

/// @desc Init values

enum a {
	Stand,
	Walk,
	Fire,
	Jump,
	JumpFire
}

grav = 5  // weight
stopFactor = 0.01

// 0 -> accel  for 1 sec
// maxspeed is reached at time = maxspeed/accel

accel = 200

maxspeedX = 80
maxspeedY = totalMaxSpeed

jumpSpeed = 40
jumpTime = 0.5 //sec
_jumpTime = 0 // current

feetcollision = true


image_speed = 0.1
 