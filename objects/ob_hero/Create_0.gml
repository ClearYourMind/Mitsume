event_inherited()

/// @desc Init values

enum a {
	Stand,
	Walk,
	Fire,
	Jump,
	JumpFire
}
enum d {
	None,
	Left,
	Right,
	Up,
	Down
}

grav = 800  // weight
oStopFactor = 0.00001

// 0 -> accel  for 1 sec
// maxspeed is reached at time = maxspeed/accel

accel = 200

maxspeedX = 80
maxspeedY = 400

jumpSpeed = 200
jumpTime = 0.20 //sec
_jumpTime = 0 // current

feetcollision = true
headcollision = false
health = 6

image_speed = 0.1
//image_alpha = 0.3

weapon = instance_create_depth(0,0,0, ob_weapon_1)
 