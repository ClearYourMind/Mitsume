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

backLayer = layer_get_id("Tiles_2")

// create GUI
instance_create_depth(0,0, depths.gui, ob_hero_gui)
with ob_gui event_perform(ev_other, ev_user0)
