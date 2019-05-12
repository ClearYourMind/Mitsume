/// @desc Init instance-based vars

//// create GUI
view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])

if instance_exists(hero) {
	if instance_number(ob_gui) = 0 {
		show_debug_message(object_get_name(object_index) + ": Created GUI object " + object_get_name(hero.guiObject))
		instance_create_depth(0,0, depths.gui, hero.guiObject)
		sc_gui_update(hero.guiObject)
	} else
		show_debug_message(object_get_name(object_index) + ": GUI object already exists (" + object_get_name(ob_gui.object_index) + ")")
} else
	show_debug_message(object_get_name(object_index) + ": Hero does not exists!")

/// start deactivation timer
alarm_set(0, deactivateTime)

scrollSpeed = -150
