/// @desc Process phases

/// Procedure phase

if phase == ar.Appear {
    x = hero.x + cos(angle)* radius
    y = hero.y + sin(angle)* radius  
    radius -= dRad * dTime
    angle -= angleSpeed * dTime  
    image_angle += imageSpeed * dTime
    if radius < 0 
		phase = ar.Hold
	if not audio_is_playing(sn_arrow)
		sc_play_sound(sn_arrow, false)
}

/*
if phase == ar.Hold {
    forward = hero.forward  
    x = hero.x - 6*forward
    y = hero.y 
    image_angle = (-45 * forward)+90
    gravity  = 0
}
 
if phase == ar.Launch {
    hspeed = 4 * forward
    gravity = 0.4
    image_angle = direction
}

if phase == ar.Stay {
    gravity = 0
    speed = 0
}

if phase == ar.Recall {
    direction = point_direction(x,y,hero.x, hero.y)
    speed = 4
    if point_distance(hero.x, hero.y,x,y) < 5 phase = ar_Hold    
}

if phase == ar.Disappear {
    image_speed = 0.1
    speed = 0
    if image_index > 6.8 {
        instance_destroy()
        hero.arrow = noone
    }
}

//image_xscale = hero.forward

