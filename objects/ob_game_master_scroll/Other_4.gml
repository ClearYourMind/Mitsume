/// @desc Init instance-based vars

if instance_exists(ob_hero_abstract)
	 hero = ob_hero_abstract

//// create GUI
view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])

if instance_exists(hero) {
	instance_create_depth(0,0, depths.gui, hero.guiObject)
	sc_gui_update(hero.guiObject)
}

/// start deactivation timer
alarm_set(0, deactivateTime)

