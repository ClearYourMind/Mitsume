/// @desc Get tiles under object

var frontLayer  = layer_get_id("Tiles_1")
tileMap = layer_tilemap_get_id(frontLayer)
tileSet = tilemap_get_tileset(tileMap)

tileCountX =  (w2+1) div 16
tileCountY =  (h2+1) div 16

for (var j=0; j < tileCountY; j++)
for (var i=0; i < tileCountX; i++) {
	var _x = i*16+x
	var _y = j*16+y
	tiles[i, j] = tilemap_get_at_pixel(tileMap, _x, _y)
	tilemap_set_at_pixel(tileMap, 0, _x, _y)
}


