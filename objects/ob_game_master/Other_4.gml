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

// setup background
backLayer = layer_get_id("Back")

var tileMap = layer_tilemap_get_id(layer_get_id("Tiles_1"))
var shadowMap = layer_tilemap_get_id(layer_get_id("Shadows")) 
var _tile
for (var j=0; j<(room_height div 16) - 3; j++)
for (var i=0; i<(room_width  div 16) + 1; i++) {
	var _x = i*16
	var _y = j*16
	if (tilemap_get_at_pixel(tileMap, _x, _y)    > 0) and
	   (tilemap_get_at_pixel(tileMap, _x, _y+16) = 0) {
		tilemap_set_at_pixel(shadowMap, 2, _x, _y+16)
		tilemap_set_at_pixel(shadowMap, 1, _x, _y+32)
	}
}

// create GUI
instance_create_depth(0,0, depths.gui, hero.guiObject)
sc_gui_update()
