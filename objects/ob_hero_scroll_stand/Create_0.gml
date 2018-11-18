/// @desc
event_inherited()

image_xscale = -1
yy = y

flare = instance_create_depth(x, y, depths.explosions, ob_flares)
flare.object = id
flare.xOffset = -12
flare.yOffset = 18
flare.w1 = 8
flare.w2 = 8
flare.h1 = 4
flare.h2 = 4
flare.sparkleSpawnPeriod = 0.1
flare.sparkleSpeedX = 150
