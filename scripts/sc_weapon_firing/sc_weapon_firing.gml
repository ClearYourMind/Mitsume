/// @desc Bring weapon into action
/// @arg switch_on false=off

if instance_exists(hero)
if instance_exists(hero.weapon) {
	if argument0 
		with hero.weapon event_perform(ev_other, ev_user0)
	else
		with hero.weapon event_perform(ev_other, ev_user1)
}