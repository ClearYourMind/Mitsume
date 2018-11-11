/// @desc
//event_inherited()
moveSpeed = cos(counter*0.005)*3

x = (x+moveSpeed) mod 100000

var _x, _w, r, tt;
var tileShift = false

layer_x(fireLayer, (x*speedFactor) mod 32 - 32)

_cityXOffset = cityXOffset
cityXOffset = (x*speedFactor) mod 8

tileShift = sign(moveSpeed)*(cityXOffset-_cityXOffset) < 0

layer_x(cityLayer, cityXOffset)


if tileShift {
	_w = view_w div 8+3
	if moveSpeed<0 {
		tt[0] = tilemap_get(cityMap, 0, 12)
		tt[1] = tilemap_get(cityMap, 0, 13)
		for (var i=0; i<_w-1; i++) {
			tilemap_set(cityMap, tilemap_get(cityMap, i+1, 12), i, 12)
			tilemap_set(cityMap, tilemap_get(cityMap, i+1, 13), i, 13)
		}
		tilemap_set(cityMap, tt[0], _w-1, 12)
		tilemap_set(cityMap, tt[1], _w-1, 13)
	} else {
		tt[0] = tilemap_get(cityMap, _w-1, 12)
		tt[1] = tilemap_get(cityMap, _w-1, 13)
		for (var i=_w; i>0; i--) {
			tilemap_set(cityMap, tilemap_get(cityMap, i-1, 12), i, 12)
			tilemap_set(cityMap, tilemap_get(cityMap, i-1, 13), i, 13)
		}
		tilemap_set(cityMap, tt[0], 0, 12)
		tilemap_set(cityMap, tt[1], 0, 13)
	}
}
