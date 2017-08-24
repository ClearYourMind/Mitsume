/// @desc Hurt enemy (ob_shot)

if not (other.phase = ar.Recoil)
	event_perform(ev_collision, ob_shot)
