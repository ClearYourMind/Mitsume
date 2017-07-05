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
stopFactor = 0.00001

// 0 -> accel  for 1 sec
// maxspeed is reached at time = maxspeed/accel

accel = 120

maxspeedX = 40
