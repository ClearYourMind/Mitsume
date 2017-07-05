/// @description  process floor

if awake {
    vspeed += accel
    if abs(vspeed) > maxspeed vspeed = maxspeed*sign(vspeed)
    if image_index > 2.8 {
        image_speed = 0
    }
}


