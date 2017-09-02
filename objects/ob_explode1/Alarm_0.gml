
if frame < framecount {
    frame++
    sprite_index = anim[frame]
    alarm_set(0, framespeed)
} else {
    instance_destroy()
}




