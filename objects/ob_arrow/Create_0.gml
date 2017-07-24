event_inherited()
/// @desc Init values

enum ar {
	Appear    = 0,
	Hold      = 1,
	LaunchBegin = 2,
	Launch    = 3 ,
	Stay      = 4,
	SagBegin  = 5,
	Sag       = 6,
	Disappear = 7,
	Recall    = 8
}

phase = ar.Appear

lifeTime = sc_timeout_new(10)
fadeTime = sc_timeout_new(5)

flashing = false

// appearing values
angle = 0
radius = 300
angleSpeed = pi*4  // in radians
imageSpeed = 360*5
dRad = 200

sagSpeed = 135
sagAccel = 1200//1650

image_speed = 0

forward = -1
hit = 1
stepped = false

oAccel = 400
maxspeedX = 250
maxspeedY = 180
oY = 0

animEnded = false
