/// @desc
event_inherited()

flare = instance_create_depth(x, y, depths.explosions, ob_flares)
flare.object = id
flare.sparkleSpawnPeriod = 0.1
flare.sparkleSpeedX = scrollSpeed

imageSpeed = -360 * 5
maxspeedX = -scrollSpeed * 1.25
maxspeedY = maxspeedX
maxspeed = maxspeedX
grav = 0
