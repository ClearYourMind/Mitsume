//image_speed = 0.4

framecount = 11
frame = 0
framespeed = 3
dropvalue = 0
dropitem = noone

anim[framecount - 1] = noone

anim[0] = sp_explode10
anim[1] = sp_explode11
anim[2] = sp_explode12
anim[3] = sp_explode13
anim[4] = sp_explode9
anim[5] = sp_explode8
anim[6] = noone
anim[7] = choose(sp_explode8, sp_explode9, sp_explode12, sp_explode13)
anim[8] = noone
anim[9] = choose(sp_explode8, sp_explode9, sp_explode12, sp_explode13)
anim[10] = noone
anim[11] = choose(sp_explode8, sp_explode9, sp_explode12, sp_explode13)

alarm_set(0, framespeed)

sc_play_sound(sn_destroy, false)

