event_inherited();
///@desc process AI

if not instance_exists(hero)
	exit

var xDist = hero.x - x
var yDist = hero.y - y

var found = false

// реакция на игрока
if phase == 0 {
	if (abs(xDist) <= xRange) and (abs(yDist) <= yRange) {
		found = ( collision_line(x, y-20 , hero.x, hero.y , hero, false, true) and not
				  collision_line(x, y-20 , hero.x, hero.y , ob_wall, false, true) )
	}
	if found
		forward = sign(xDist)

	// реакция на игрока
    if shoot {
        sprite_index = sp_skeleton_attack
        if (image_index >= 2) and (image_index < 2 + image_speed)
        with instance_create_depth(x, y, depths.shots, ob_shot_enemy_targeted) 
           forward = other.forward
        if animEnded {
			shoot = false
			animEnded = false
			sc_timeout_start(shotTime)
		}
    }
	if not shoot 
	if hits > 0 and not hurt {
		if sc_timeout_over(shotTime) {
		    hits--
		    shoot = true
		    image_index=0
		}
	} else
	    sprite_index = sp_skeleton_idle
  
	image_xscale = forward
	
	// если игрок близко - взрывается
	if abs(xDist) < detonateRange and found {
	    sprite_index = sp_skeleton_explode
	    image_index = 0
	    phase = 1  // exploding
	}    
}

// детонация
if phase == 1 {
	if not hurt {
		hurt = true
		hurtstep = 0
	}
    if animEnded {
		animEnded = false
		instance_destroy()
	}
	if not audio_is_playing(sn_hit2)
	    sc_play_sound(sn_hit2)
}

animEnded = false


