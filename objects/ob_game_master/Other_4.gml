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
backLayer = layer_get_id("Tiles_2")
layer_depth(backLayer, depths.lBack)

var tileMap = layer_tilemap_get_id(layer_get_id("Tiles_1"))
shadowLayer = layer_create(depths.lShadow)
var k = 0
var tiles = []
var _tile
for (var j=0; j<room_height div 8 - 1; j++)
for (var i=0; i<room_width  div 8 - 1; i++) {
	_tile = tilemap_get_at_pixel(tileMap, i*8+4, j*8+4)
	if _tile > 0 {
		tiles[k] = _tile
		k++
	}
}


for (var i=0; i<array_length_1d(tiles); i++) {
	var _x = tilemap_get_x(tiles[i])
	var _y = tilemap_get_y(tiles[i])
	
}

// create GUI
instance_create_depth(0,0, depths.gui, hero.guiObject)
sc_gui_update()
