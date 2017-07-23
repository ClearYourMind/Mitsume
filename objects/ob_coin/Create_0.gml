event_inherited()
/// @desc Init values, play sound

dropvalue = 20

maxspeedX = 30
maxspeedY = 300
minspeedY = 165

oSpeedX = random(maxspeedX*2)-maxspeedX
speedX = oSpeedX
speedY = -maxspeedY * 0.75

grav = 500

image_speed = 0.1
floorcollision = false

initiated = false
flashing = false

lifeTime = sc_timeout_new(100)
fadeTime = 5
sc_timeout_start(lifeTime)

sc_play_sound(sn_coin, false)


