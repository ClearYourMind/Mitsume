/// @desc Hurt enemy

if paused
	exit
	
var _shotObject = other.id;
with base
if vulnerable {
	if not hurt {
		strength -= _shotObject.hit
		sc_tothem_hurt()
		
		sc_play_sound(sn_hit)
	}
}

with other
	event_perform(ev_collision, ob_enemy)

/*
Head tells Base about Hurt. Then Base chooses Head to set Hurt for.
Hurt for Base is set to false when chosen Head ceased being Hurt.
*/