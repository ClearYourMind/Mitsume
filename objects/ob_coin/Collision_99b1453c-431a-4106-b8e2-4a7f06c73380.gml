/// @desc Raise value

if not (other.phase = ar.Appear or other.phase = ar.Recall or other.phase = ar.Recoil)
	event_perform(ev_collision, ob_shot)
