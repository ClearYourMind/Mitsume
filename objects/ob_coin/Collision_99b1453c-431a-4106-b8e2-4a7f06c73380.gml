/// @desc Raise value

if not (hero.arrow.phase = ar.Appear) and not (hero.arrow.phase = ar.Recall)
	event_perform(ev_collision, ob_shot)