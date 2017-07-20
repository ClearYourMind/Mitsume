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
oStopFactor = 5 * power(10, -6)

// 0 -> accel  for 1 sec
// maxspeed is reached at time = maxspeed/accel

accel = 200

maxspeedX = 85
maxspeedY = 400

jumpSpeed = 185
jumpTime = sc_timeout_new(0.20) //sec

recoverTime = sc_timeout_new(2) // sec

aftershotTime = sc_timeout_new(0.5)

feetcollision = true
headcollision = false
health = 6

image_speed = 0.1
//image_alpha = 0.3

weapon = instance_create_depth(0,0, depths.shots, ob_weapon_1)
 