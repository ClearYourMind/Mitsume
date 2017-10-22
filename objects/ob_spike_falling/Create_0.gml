event_inherited()
/// @desc
image_speed = 0

maxspeedY = 200
oGrav = 250 + random(150)
grav = 0

fallTime = sc_timeout_new(0.4)
sc_timeout_start(fallTime)
phase = 0
oX = x

collisionResult = [false, false]
dropitem = noone
deathExplosion = ob_explode_small
