/// @desc Deactivate hero

if instance_exists(hero) {
	instance_deactivate_object(hero.guiObject)
	instance_deactivate_object(hero)
	heroExists = true
}

