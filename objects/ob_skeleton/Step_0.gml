event_inherited();
///@desc process AI

sc_enemy_watching()

// реакция на игрока
if phase == 0 {
	// по урону
	if hurt { 
		if (abs(xDist) < view_w * 0.8)
			found = true
		else {
			// don't react - too far
			shoot = false
			hits = 0
		}
	}
	
	if found
		forward = sign(xDist)

	// реакция на игрока
    if shoot {
        sprite_index = sp_skeleton_attack
        if (image_index >= 2) and not shotDone {
	        with instance_create_depth(x, y+10, depths.shots, ob_shot_enemy_targeted) 
				forward = other.forward
			shotDone = true
		}
        if animEnded {
			shoot = false
			shotDone = false
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
		animEnded = false
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


