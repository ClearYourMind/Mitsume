/// @desc Deactivate hero

if instance_exists(hero) {
//	for (var i=0; i<array_height_2d(hero.weaponList); i++)
//		instance_deactivate_object(hero.weaponList[i, 0])
	instance_deactivate_object(ob_weapon)
	instance_deactivate_object(hero.guiObject)
	instance_deactivate_object(hero)
	heroExists = true
}

