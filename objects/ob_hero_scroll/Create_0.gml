event_inherited()
/// @desc Init values

show_debug_message(object_get_name(object_index)+" created ");

maxhealth = 6
health = maxhealth
healthUsed = 0

// weapons config
weaponList[0, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_1)
weaponList[0, 1] = true 
weaponList[1, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_2)
weaponList[1, 1] = false
weaponList[2, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_3)
weaponList[2, 1] = false
weaponList[3, 0] = instance_create_depth(0,0, depths.shots, ob_weapon_4)
weaponList[3, 1] = false

weaponNum = 0
weapon = weaponList[weaponNum, 0]

//arrow = noone
arrowObject = ob_arrow_scroll_stand
guiObject = ob_hero_gui_scroll

hasMagnet = false;

staminaMax = 30
stamina = staminaMax
staminaRegenSpeed = staminaMax * (1/ 0.5/* sec*/)
staminaDepleted = false


oGrav = 800  // weight
grav = 0

stopFactorLo = 0.1
stopFactorHi = 5 * power(10, -7)


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

recoverTime = sc_timeout_new(3) 

afterShotTime = 0.15
afterLaunchTime = 0.3
pauseTime = noone

feetcollision = true
image_speed = 1

canMoveDown = false
canMoveUp = false
canMoveLeft = false
canMoveRight = false
