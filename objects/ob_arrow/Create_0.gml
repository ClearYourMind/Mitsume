event_inherited()
/// @desc Init values

enum ar {
	Appear    = 0,
	Hold      = 1,
	LaunchBegin = 2,
	Launch    = 3,
	Stay      = 4,
	SagBegin  = 5,
	Sag       = 6,
	Disappear = 7,
	Recall    = 8,
	Recoil    = 9
}

lifeTime = sc_timeout_new(10)
fadeTime = sc_timeout_new(5)

flashing = false
isVisible = true
isThrough = false
throughTime = sc_timeout_new(1)


flare = instance_create_depth(x, y, depths.explosions, ob_flares)
flare.object = id
flare.sparkleSpawnPeriod = 0.1
turnBack = false  // used if not killing and launched

// appearing values
angle = 0
radius = 300
angleSpeed = pi*4  // in radians
imageSpeed = -360*5
dRad = 300

sagSpeed = 135
sagAccel = 1200//1650

image_speed = 0

forward = -1
hit = 1
stepped = false
sprang = false

oAccel = 225
maxspeedX = 185
maxspeedY = 180
oY = y

animEnded = false
