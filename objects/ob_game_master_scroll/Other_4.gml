/// @desc Init instance-based vars

//// create GUI
view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])

if instance_exists(hero) {
	instance_create_depth(0,0, depths.gui, hero.guiObject)
	sc_gui_update(hero.guiObject)
} else
	show_debug_message("Hero does not exists!")

/// start deactivation timer
alarm_set(0, deactivateTime)

