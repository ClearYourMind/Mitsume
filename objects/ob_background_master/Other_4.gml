/// @desc setup background

backLayer = layer_get_id("Back")
shadowLayer = layer_get_id("Shadows")
frontLayer = layer_get_id("Tiles_1")

var tileMap = layer_tilemap_get_id(frontLayer)

if shadowLayer != -1 {
	var shadowMap = layer_tilemap_get_id(shadowLayer)

	for (var j=0; j<(room_height div 16) - 3; j++)
	for (var i=0; i<(room_width  div 16) + 1; i++) {
		var _x = i*16
		var _y = j*16
		if (tilemap_get_at_pixel(tileMap, _x, _y)    > 0) {
			tilemap_set_at_pixel(shadowMap, 2, _x, _y+16)
			tilemap_set_at_pixel(shadowMap, 1, _x, _y+32)
		}
	}
}
