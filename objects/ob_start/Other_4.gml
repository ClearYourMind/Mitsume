/// @desc

if not instance_exists(hero) {
	show_debug_message(" - No hero, creating new instance")
	hero = instance_create_depth(x, y, depths.general, heroObject)
}
else {
	hero.x = x
	hero.y = y
	show_debug_message(" - Hero persists, Moving to new pos")
}
