event_inherited()

/// @desc Init values

grav = 800  // weight
oStopFactor = 5 * power(10, -7)

// 0 -> accel  for 1 sec
// maxspeed is reached at time = maxspeed/accel

accel = 350

maxspeedX = 85
maxspeedY = 425

jumpSpeed = 190
jumpSpeedCharged = 425
jumpTime = sc_timeout_new(0.2) 
jumpCharged = false
mainMask = sp_hero2_stand

// wantJump added to prevent eating away pressed jump button
// while pauseAnim timer
wantJump = false 

recoverTime = sc_timeout_new(2) 

afterShotTime = 0.15
afterLaunchTime = 0.3
pauseTime = noone
pauseAnim = after.None

feetcollision = true

maxhealth = 10
health = maxhealth
healthUsed = 0

image_speed = 1

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

staminaMax = 30
stamina = staminaMax
staminaRegenSpeed = staminaMax * (1/ 0.5/* sec*/)
staminaDepleted = false

arrow = noone
arrowObject = ob_arrow
guiObject = ob_hero_gui

hasMagnet = false;
