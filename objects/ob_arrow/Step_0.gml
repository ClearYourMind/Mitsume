event_inherited()
/// @desc Process phases

if not instance_exists(hero)
	phase = ar.Disappear

if phase = ar.Appear {
    x = hero.x + cos(angle)* radius
    y = hero.y + sin(angle)* radius  
    radius -= dRad * dTime
    angle -= angleSpeed * dTime  
    image_angle += imageSpeed * dTime
    if radius < 0 
		phase = ar.Hold
	if not audio_is_playing(sn_arrow)
		sc_play_sound(sn_arrow, false)
	
} else 
if instance_exists(flare) {
	flare.spawn = false
}


if phase = ar.Hold {
	flashing = false
	if instance_exists(flare)
		flare.spawn = false
    forward = hero.forward  
	image_xscale = 1
    x = hero.x - 6*forward
    y = hero.y 
    image_angle = 90 - 45*forward
	speedX = 0
	speedY = 0
	accelX = 0
	accelY = 0
}

if phase = ar.LaunchBegin {
	if object_index = ob_arrow {
		instance_change(ob_kill_arrow, true)
//		event_perform(ev_create, 0)
	    forward = hero.forward  
		turnBack = true
		//image_speed = 1
		//if not instance_exists(flare) {
		//	flare = instance_create_depth(x, y, depths.explosions, ob_flares)
		//	flare.object = id
		//}
	}
	speedX = maxspeedX * forward
	accelX = -oAccel * forward
	image_angle = 0
	phase = ar.Launch	
}

if phase = ar.Launch {
	var _sx = speedX
	var _ax = accelX
	if abs(speedX)<5 and turnBack {
		instance_change(ob_arrow, true)
		phase = ar.Launch
		speedX = _sx
		accelX = _ax
		image_index = 0
		turnBack = false
	}
	forward = sign(speedX)
	image_xscale = forward
	oY = y
}

if phase = ar.Stay {
    speedX = 0
	speedY = 0
	accelX = 0
	accelY = 0
	sprang = false
	vspeed = 0
	y = oY
	if not sc_timeout_is_started(lifeTime) and
	   not sc_timeout_is_started(fadeTime)
		sc_timeout_start(lifeTime)
}

if phase = ar.SagBegin {
	speedY =  sagSpeed
	accelY = -sagAccel
	y+=1
	phase = ar.Sag
	sprang = false
}

if phase = ar.Sag {
	if vspeed<0 and stepped {
		if not sprang {
			sc_play_sound(sn_arrow4, false)
			sprang = true
		}
	}
	
	if stepped
		hero.y += vspeed
	
	if y<=oY {
		if stepped {
			hero.speedY = speedY
			hero.y -= 2
			stepped = false
		}
		phase = ar.Stay
	    speedX = 0
		speedY = 0
		accelX = 0
		accelY = 0
		sprang = false
		vspeed = 0
		y = oY
	}
}

if phase = ar.Recall {
    image_angle += imageSpeed * dTime
    speedX = lengthdir_x(maxspeedX, point_direction(x,y,hero.x, hero.y))
    speedY = lengthdir_y(maxspeedX, point_direction(x,y,hero.x, hero.y))
    if point_distance(hero.x, hero.y, x ,y) < 5
		phase = ar.Hold    
	sc_timeout_stop(lifeTime)
	sc_timeout_stop(fadeTime)
	flashing = false
}

if phase = ar.Disappear {
    image_speed = 0.15
	flashing = true
	if instance_exists(flare)
		flare.spawn = false
//	image_alpha = 0.75
    speedX = 0
	accelX = 0
	speedY = 0
	accelY = 0
	sprang = false
    if animEnded {
        instance_destroy()
        //hero.arrow = noone
    }
}

animEnded = false
stepped = false
//image_xscale = hero.forward

/// Process timer

if sc_timeout_is_started(lifeTime)
if sc_timeout_over(lifeTime) {
	flashing = true
	sc_timeout_start(fadeTime)
}	

if sc_timeout_is_started(fadeTime)
if sc_timeout_over(fadeTime) {
	phase = ar.Disappear
}