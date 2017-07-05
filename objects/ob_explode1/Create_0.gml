//image_speed = 0.4

framecount = 14
frame = 0
framespeed = 3
dropvalue = 0
dropitem = noone

anim[14] = sp_explode8
anim[13] = noone
anim[12] = sp_explode9
anim[11] = noone
anim[10] = sp_explode8
anim[9] = noone
anim[8] = sp_explode13
var i=0
repeat(5) {
    anim[7-i] = choose(sp_explode5, sp_explode6, sp_explode4, sp_explode4, sp_explode4)
    i++
}
/*
anim[7] = sp_explode6
anim[6] = sp_explode4
anim[5] = sp_explode4
anim[4] = sp_explode6
anim[3] = sp_explode5
*/

anim[2] = sp_explode3
anim[1] = sp_explode2
anim[0] = sp_explode1

alarm[0] = framespeed

sc_play_sound(sn_destroy, false)

