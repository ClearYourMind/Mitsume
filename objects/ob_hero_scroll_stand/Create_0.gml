/// @desc
event_inherited()

image_xscale = 1
forward = -1
grav = 0
oGrav = 800

flare = instance_create_depth(x, y, depths.explosions, ob_flares)
flare.object = id
flare.xOffset = 12
flare.yOffset = 16
flare.w1 = 8
flare.w2 = 8
flare.h1 = 4
flare.h2 = 4
flare.sparkleSpawnPeriod = 0.1
flare.sparkleSpeedX = scrollSpeed

maxspeedY = 125
maxspeedYLo = maxspeedY * 0.25

accelLo = 75
accelHi = 350
accelY = accelLo
