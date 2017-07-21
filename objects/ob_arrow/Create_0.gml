event_inherited()
/// @desc Init values

enum ar {
	Appear,
	Hold,
	Launch,
	Stay,
	Disappear,
	Recall
}

phase = ar.Appear

lifetime = sc_timeout_new(10)

angle = 0
radius = 300
angleSpeed = pi*4  // in radians
imageSpeed = 360*5
dRad = 200

image_speed = 0

forward = -1
hit = 1
