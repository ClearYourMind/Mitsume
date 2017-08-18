/// @desc Perform ob_hero "level up" event

if instance_exists(hero)
with hero
	event_perform(ev_other, ev_user0)

