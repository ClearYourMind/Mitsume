/// @desc before jump

speedY = -jumpSpeed
accelY = 0
maxspeedY = maxspeedYFall
grav = oGrav
sc_play_sound(sn_jump, false)
sc_timeout_start(jumpTime)
y-=2

