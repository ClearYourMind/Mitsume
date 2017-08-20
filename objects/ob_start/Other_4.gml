/// @desc

if not instance_exists(hero)
	hero = instance_create_depth(x, y, depths.general, ob_hero)
else {
	hero.x = x
	hero.y = y
}
