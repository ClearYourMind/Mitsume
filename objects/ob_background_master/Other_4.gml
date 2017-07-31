/// @desc setup background

backLayer   = layer_get_id("Back")
shadowLayer = layer_get_id("Shadows")
frontLayer  = layer_get_id("Tiles_1")

var tileMap = layer_tilemap_get_id(frontLayer)
if shadowLayer != -1 {
	shadowMap = layer_tilemap_get_id(shadowLayer)
	shW = tilemap_get_tile_width (shadowMap)
	shH = tilemap_get_tile_height(shadowMap)

	for (var j=0; j<(room_height div 16) - 3; j++)
	for (var i=0; i<(room_width  div 16) + 1; i++) {
		if (tilemap_get_at_pixel(tileMap, i*16, j*16)    > 0) {
			tilemap_set_at_pixel(shadowMap, 2, i*shW, j*shH)
			tilemap_set_at_pixel(shadowMap, 1, i*shW, j*shH+shH)
		}
	}
}
