/// @desc Draw elements

for (var i=0; i<elementCount; i++) {
	var elem = element[i]
	var elemPos = elem[el.pos]
	draw_sprite(elem[el.sprite], elem[el.index], _x + elemPos[0], _y + elemPos[1])
}
