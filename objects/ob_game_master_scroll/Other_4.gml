/// @desc Init instance-based vars

if instance_exists(ob_heroparent)
	 hero = ob_heroparent

// create GUI
view_xborder = camera_get_view_border_x(view_camera[0])
view_yborder = camera_get_view_border_y(view_camera[0])
view_w = camera_get_view_width (view_camera[0])
view_h = camera_get_view_height(view_camera[0])
view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])

if instance_exists(hero) {
	instance_create_depth(0,0, depths.gui, hero.guiObject)
	sc_gui_update(hero.guiObject)
}

/// start deactivation timer
alarm_set(0, deactivateTime)

