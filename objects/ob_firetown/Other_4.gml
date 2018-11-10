/// @desc
fireLayer   = layer_get_id("Tiles_Fire")
fireCityLayer = layer_get_id("Tiles_FireCity")
cityLayer = layer_get_id("Tiles_City")

fireCityMap = layer_tilemap_get_id(fireCityLayer)
cityMap = layer_tilemap_get_id(cityLayer)

// generate background
var _x = 0
var _y = y+16
var t = 0, r = 0

// fire city
for (var i=0; i<room_width div 8; i++) {
	_x = i*8
	r = irandom(11)+1
	if r mod 3 = 0 {
		t = (r mod 4 mod 2)+2
	} else
		t = r mod 2
	t = t*3 + 1
	tilemap_set_at_pixel(fireCityMap, t, _x, _y)
}

// city
_y = y+24
r = irandom(7)+21
tilemap_set_at_pixel(cityMap, r, 0, _y)

var tt;
for (var i=1; i<room_width div 8; i++) {
	_x = i*8
	r = irandom(5)
	if r<=4 t = r + 24 else t = 21
	// check previous tile
	tt = tilemap_get_at_pixel(cityMap, _x-8, _y)
	if tt < 24 t = tt + 1
	tilemap_set_at_pixel(cityMap, t, _x, _y)
}

