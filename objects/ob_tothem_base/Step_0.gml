
/// AI

sc_enemy_watching()

// реакция на игрока
if mode == 0 {
	if found 
		mode = 1
}   

// строит тотем
var _x = x+8
var _y = 0
if mode == 1 { 
    if phase == 0 {
		#region	/// Check height before building
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
				pieces[piece] = instance_create_depth(x,view_y-16, depths.general, ob_tothem);
	            with pieces[piece] {
	                base = other.id
					speedY = maxspeedY
				}
	            piece++
            } else {
				maxhurtpiece = floor(maxpiece / 2);
				if maxhurtpiece < 4
					maxhurtpiece = maxpiece;
				strength = maxhurtpiece * 3;
				piece = 0
				vulnerable = true
				phase = 2
			}
        }    
		#endregion
    }
    if phase == 2 {
		#region /// Processing completed tothem
		if found 
			forward = sign(xDist)
		
		if strength<=0 {
			killed = true
			exit;
		}
		
		// process hurt
		if hurt {
			if not pieces[piece].hurt {
				var _count = floor(maxpiece / maxhurtpiece)
				for (var i=0; i<_count; i++)
					pieces[(piece+maxhurtpiece*i) mod maxpiece].hurt = true
			} else {
				piece = (piece+1) mod maxpiece;
				hurt = false
			}
		}
		#endregion
    }
}

