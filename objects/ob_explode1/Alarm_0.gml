
if frame < framecount {
    frame++
    sprite_index = anim[frame]
    alarm[0] = framespeed
} else {
    instance_destroy()
}




