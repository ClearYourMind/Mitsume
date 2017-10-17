/// @desc setup shadows and parallax

backLayer   = layer_get_id("Back")
shadowLayer = layer_get_id("Shadows")
frontLayer  = layer_get_id("Tiles_1")

var tileMap = layer_tilemap_get_id(frontLayer)
if shadowLayer != -1 {
	var shadowMap = layer_tilemap_get_id(shadowLayer)
	shW = tilemap_get_tile_width (shadowMap)
	shH = tilemap_get_tile_height(shadowMap)

	for (var j=0; j<(room_height div 16); j++) 
	for (var i=0; i<(room_width  div 16); i++) {
		var _x = i*16
		var _y = j*16
		var _sx = i*shW
		var _sy = j*shH
		if (tilemap_get_at_pixel(tileMap, _x, _y) > 0) {
			if (tilemap_get_at_pixel(tileMap, _x+16, _y) = 0) and
	           (tilemap_get_at_pixel(tileMap, _x-16, _y) = 0) {
				if tilemap_get_at_pixel(shadowMap, _sx, _sy) = 0
					tilemap_set_at_pixel(shadowMap, 1, _sx, _sy)
			} else {
				tilemap_set_at_pixel(shadowMap, 2, _sx, _sy)
				tilemap_set_at_pixel(shadowMap, 2, _sx, _sy+shH)
				tilemap_set_at_pixel(shadowMap, 1, _sx, _sy+shH*2)
			}
		}
	}
}
