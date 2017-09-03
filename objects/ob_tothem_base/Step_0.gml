
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
        if maxpiece == 0 { // если не задано
	        repeat (100) { // смотрит вверх
	            maxpiece++
	            _y = y - 16*maxpiece
	            if collision_point(_x, _y, ob_wall, false, true)
	                break
	        }
	        if maxpiece == 0
	            maxpiece = 5    // если определение высоты неудачно
		}
		phase = 1
		sc_timeout_start(timeout)
    }
    if phase == 1 {
        if sc_timeout_over(timeout) {
            piece++
            if piece <= maxpiece {
	            with instance_create_depth(x,view_y-16, depths.general, ob_tothem) {
	                base = other.id
					speedY = maxspeedY
				}
            } else
				phase = 2
        }    
    }
    if phase == 2 {
    // смотрит по сторонам
		if found 
			forward = sign(xDist)

    }
}

