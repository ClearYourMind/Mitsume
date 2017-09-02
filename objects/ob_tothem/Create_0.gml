event_inherited()
/// @desc Init

image_speed = 0
animEnded = false

maxspeedY = 400
grav = 800

strength = 5
dropvalue = 20

forward = -1
base = noone

deploy = false
shotDone = false

enum th {
	idle,
	fire,
}

phase = th.idle

