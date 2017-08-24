event_inherited();

if strength > 0 {
	var i = 0;
	var _dir;
	repeat (5) {
	    with instance_create_depth(x, y, depths.shots, ob_shot_enemy_simple) {
	        _dir = -180+45*i
			maxspeedY = maxspeedX
			speedX = cos(degtorad(_dir)) * maxspeedX
			speedY = sin(degtorad(_dir)) * maxspeedX
			initiated = true
	    }    
	    i++
	}
	audio_stop_sound(sn_hit2)
}
