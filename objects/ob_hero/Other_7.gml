/// @desc

// Inherit the parent event
event_inherited();

//if sprite_index != sp_hero_stand

if idle {
	idleAnim = choose(sp_hero_stand2, sp_hero_stand3)
	idle = false
} else
	idleAnim = sp_hero_stand
