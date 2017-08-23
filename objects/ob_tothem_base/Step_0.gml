
/// AI
if not instance_exists(hero)
	exit

var xDist = hero.x - x
var yDist = hero.y - y

var found = false

// реакция на игрока
if mode == 0 {
	if (abs(xDist) <= xRange) and (abs(yDist) <= yRange) {
		found = ( collision_line(x, y-20 , hero.x, hero.y , hero, false, true) and not
				  collision_line(x, y-20 , hero.x, hero.y , ob_wall, false, true) )
	}
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
	//            instance_create(_x, _y, ob_mark)
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
	            with instance_create_depth(x,view_y-16*piece, depths.general, ob_tothem)
	                base = other.id
            } else
				phase = 2
        }    
    }
    if phase == 2 {
    // смотрит по сторонам
		if (abs(xDist) <= xRange) and (abs(yDist) <= yRange) {
			found = ( collision_line(x, y-20 , hero.x, hero.y , hero, false, true) and not
					  collision_line(x, y-20 , hero.x, hero.y , ob_wall, false, true) )
		}
		if found 
			forward = sign(xDist)

    }
}

