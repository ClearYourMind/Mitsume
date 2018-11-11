/// @desc Init instance-based vars

if instance_exists(ob_heroparent)
	 hero = ob_heroparent

// create GUI
if instance_exists(hero) {
	instance_create_depth(0,0, depths.gui, hero.guiObject)
	sc_gui_update(hero.guiObject)
}

/// start deactivation timer
alarm_set(0, deactivateTime)

