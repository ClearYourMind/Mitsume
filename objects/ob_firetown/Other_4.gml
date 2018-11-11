/// @desc
fireLayer   = layer_get_id("Tiles_Fire")

cityLayer = layer_get_id("Tiles_City")
cityMap = layer_tilemap_get_id(cityLayer)

// generate background
var t = 0, r = 0

// fire city
for (var i=0; i<tilemap_get_width(cityMap); i++) {
	r = irandom(11)+1
	if r mod 3 = 0 {
		t = (r mod 4 mod 2)+2
	} else
		t = r mod 2
	t = t*3 + 1
	tilemap_set(cityMap, t, i, 12)
}

// city
r = irandom(7)+13
tilemap_set(cityMap, r, 0, 13)

var tt;
for (var i=1; i<tilemap_get_width(cityMap); i++) {
	r = irandom(5)
	if r<=4 t = r + 16 else t = 13
	// check previous tile
	tt = tilemap_get(cityMap, i-1, 13)
	if tt < 16 t = tt + 1
	tilemap_set(cityMap, t, i, 13)
}

