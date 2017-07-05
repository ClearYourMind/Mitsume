/// @description  process floor

if awake {
    vspeed -= accel
    if abs(vspeed) > maxspeed vspeed = maxspeed*sign(vspeed)
    if image_index > 3.8 {
        instance_destroy()
    }
}


