/// @desc

var _x, r, t, tt;
var tileShift = false

moveSpeed = sin(counter*0.005)*5

x = (x+moveSpeed) mod 100000
layer_x(fireLayer, (x*speedFactor) mod 32 - 24)

_cityXOffset = cityXOffset
cityXOffset = (x*speedFactor) mod 8

tileShift = sign(moveSpeed)*(cityXOffset-_cityXOffset) < 0

layer_x(fireCityLayer, cityXOffset)
layer_x(cityLayer,     cityXOffset)


if tileShift {
	if moveSpeed<0 {
		tt[0] = tilemap_get(fireCityMap, 0, 12)
		tt[1] = tilemap_get(cityMap,     0, 13)
		for (var i=0; i<tilemap_get_width(cityMap)-1; i++) {
			tilemap_set(fireCityMap, tilemap_get(fireCityMap, i+1, 12), i, 12)
			tilemap_set(cityMap,     tilemap_get(cityMap,     i+1, 13), i, 13)
		}
		tilemap_set(fireCityMap, tt[0], tilemap_get_width(cityMap)-1, 12)
		tilemap_set(cityMap,     tt[1], tilemap_get_width(cityMap)-1, 13)
	} else {
		tt[0] = tilemap_get(fireCityMap, tilemap_get_width(cityMap)-1, 12)
		tt[1] = tilemap_get(cityMap,     tilemap_get_width(cityMap)-1, 13)
		for (var i=tilemap_get_width(cityMap); i>0; i--) {
			tilemap_set(fireCityMap, tilemap_get(fireCityMap, i-1, 12), i, 12)
			tilemap_set(cityMap,     tilemap_get(cityMap,     i-1, 13), i, 13)
		}
		tilemap_set(fireCityMap, tt[0], 0, 12)
		tilemap_set(cityMap,     tt[1], 0, 13)
	}
	
}