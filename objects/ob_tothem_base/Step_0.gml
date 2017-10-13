event_inherited()

///@desc AI

sc_enemy_watching()

// реакция на игрока
if mode == 0 {
	if found {
		mode = 1
		forward = sign(xDist)
	}
}   

// строит тотем
if mode == 1 { 
    if phase == 0 {
		#region	/// Check height before building
		var _x = x+8
		var _y = 0
        if maxpiece == 0 { // если не задано
	        repeat (100) { // смотрит вверх
	            maxpiece++
	            _y = y - 16*maxpiece
	            if collision_point(_x, _y, ob_wall, false, true)
	                break
	        }
	        if maxpiece == 0
	            maxpiece = 4    // если определение высоты неудачно
		}
		pieces[maxpiece-1] = noone;
		phase = 1
		sc_timeout_start(timeout)
		#endregion
    }
    if phase == 1 {
		#region /// Create falling tothem heads
        if sc_timeout_over(timeout) {
            if piece <= maxpiece-1 {
				pieces[piece] = instance_create_depth(x,view_y-16, depths.general, ob_tothem)
	            with pieces[piece] {
	                base = other.id
					speedY = maxspeedY
				}
	            piece++
            } else {
				halfpiece = floor(maxpiece / 2)
				if halfpiece < 4
					halfpiece = maxpiece
				strength = halfpiece * 3
				piece = 0
				vulnerable = true
				phase = 2
			}
        }    
		#endregion
    }
    if phase == 2 {
		#region /// Processing completed tothem
		if strength<=0 {
			instance_destroy()
			exit
		}
		
		// walk and hit against walls
		_x = x + 10 * forward;
		if (not (collision_point(_x, y+16, ob_wall, false, false) or 
		         collision_point(_x, y+16, ob_motion_wall, false, false)) ) or
		   (collision_line(_x, y - (maxpiece-1)*16, _x, y, ob_wall, false, false) or
		    collision_line(_x, y - (maxpiece-1)*16, _x, y, ob_motion_wall, false, false)) or
			collision_point(_x, y+15, ob_tothem_base, false, true) {
			forward = -forward
		}
		speedX = maxspeedX*forward;

		if hurt {
			if not pieces[maxpiece - piece - 1].hurt {
				piece = (piece+1) mod maxpiece
				hurt = false
			}
			speedX = 0
		}
		#endregion
    }
}

