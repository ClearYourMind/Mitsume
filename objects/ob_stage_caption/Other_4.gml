/// @desc Deactivate hero

if instance_exists(hero) {
//	instance_deactivate_object(ob_heroparent.guiObject)
	instance_deactivate_object(ob_heroparent)
	heroExists = true
}

