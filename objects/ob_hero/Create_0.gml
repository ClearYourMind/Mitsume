event_inherited()

/// @desc Init values

enum after {
	None,
	Shot,
	Spawn
}
enum d {
	None,
	Left,
	Right,
	Up,
	Down
}

grav = 800  // weight
oStopFactor = 5 * power(10, -7)

// 0 -> accel  for 1 sec
// maxspeed is reached at time = maxspeed/accel

accel = 350

maxspeedX = 85
maxspeedY = 400

jumpSpeed = 185
jumpTime = sc_timeout_new(0.225) 

recoverTime = sc_timeout_new(2) 

pauseTime = sc_timeout_new(0.2)
pauseAnim = after.None

feetcollision = true
headcollision = false

maxhealth = 10
health = maxhealth

image_speed = 0.1
//image_alpha = 0.3

weaponList[0, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_1)
weaponList[0, 1] = true 
weaponList[1, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_2)
weaponList[1, 1] = true 
weaponList[2, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_3)
weaponList[2, 1] = true 

weaponNum = 2
weapon = weaponList[weaponNum, 0]

arrow = noone
 