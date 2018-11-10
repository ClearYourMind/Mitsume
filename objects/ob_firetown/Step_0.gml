/// @desc
var xx, _x;
var r, t;

moveSpeed = cos(counter*0.01)

x = (x+moveSpeed) mod 100000
layer_x(fireLayer, -(x*speedFactor) mod 32)

xx = (x*speedFactor) mod 8
layer_x(fireCityLayer, -xx)
layer_x(cityLayer,     -xx)


if xx = 0 {
	for (var i=0; i<room_width div 8-1; i++) {
		_x = i*8
		t = tilemap_get_at_pixel(fireCityMap, _x+8, y+16)
		tilemap_set_at_pixel( fireCityMap, t, _x,   y+16)
		t = tilemap_get_at_pixel(cityMap, _x+8, y+24)
		tilemap_set_at_pixel( cityMap, t, _x,   y+24)
	}
	
	//firecity
	r = irandom(11)+1
	if r mod 3 = 0 {
		t = (r mod 4 mod 2)+2
	} else
		t = r mod 2
	t = t*3 + 1
	tilemap_set_at_pixel(fireCityMap, t, room_width - 8, y+16)
	
	//city
	r = irandom(5)
	if r<=4 t = r + 24 else t = 21
	// check previous tile
	var tt = tilemap_get_at_pixel(cityMap, room_width-16, y+24)
	if tt < 24 t = tt + 1
	tilemap_set_at_pixel(cityMap, t, room_width-8, y+24)
	
}
