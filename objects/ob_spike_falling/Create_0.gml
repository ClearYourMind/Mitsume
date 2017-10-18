event_inherited()
/// @desc
image_speed = 0

maxspeedY = 200
oGrav = 400
grav = 0

fallTime = sc_timeout_new(0.75)
sc_timeout_start(fallTime)
phase = 0
oX = x

collisionResult = [false, false]
dropitem = noone
