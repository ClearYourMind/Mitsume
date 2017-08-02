/// @desc Draw elements

for (var i=0; i<elementCount; i++) {
	var elem = element[i]
	var elemPos = elem[el.pos]
	if sprite_exists(elem[el.sprite])
		draw_sprite(elem[el.sprite], elem[el.index], _x + elemPos[0], _y + elemPos[1])
	if elem[el.text] != ""
		draw_text(_x + elemPos[0], _y + elemPos[1], elem[el.text])
	
	
}
