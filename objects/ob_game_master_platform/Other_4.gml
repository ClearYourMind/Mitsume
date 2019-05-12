/// @desc Init instance-based vars

if instance_exists(ob_heroparent) {
	 hero = ob_heroparent

// set view
	var view_w = camera_get_view_width (view_camera[0])
	var view_h = camera_get_view_height(view_camera[0])
	var view_x = hero.x - view_w*0.5
	var view_y = hero.y - view_h*0.5
	camera_set_view_pos(view_camera[0], view_x, view_y)
	//camera_set_update_script(view_camera[0], sc_view_follow_hero)
}


// create GUI
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

