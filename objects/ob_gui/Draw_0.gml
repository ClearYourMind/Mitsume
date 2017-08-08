/// @desc Draw elements

for (var i=0; i<elementCount; i++) {
	var elem = element[i]
	var elemPos = elem[el.pos]
	switch elem[el.type] {
	case el.elSprite:
		if sprite_exists(elem[el.sprite]) {
			draw_set_colour(elem[el.color])
			draw_set_alpha (elem[el.alpha])
			draw_sprite(elem[el.sprite], elem[el.index], oX + elemPos[0], oY + elemPos[1])
		}
		break
	case el.elText:
		if elem[el.text] != "" {
			draw_set_colour(elem[el.color])
			draw_set_alpha (elem[el.alpha])
			draw_text(oX + elemPos[0], oY + elemPos[1], elem[el.text])
		}
		break
	case el.elRect:
		var elemSize = elem[el.size]
		draw_set_colour(elem[el.color])
		draw_set_alpha (elem[el.alpha])
		draw_rectangle(oX + elemPos[0], oY + elemPos[1],
					   oX + elemPos[0] + elemSize[0], oY + elemPos[1]+ elemSize[1], false)
		break
	}
	
}
draw_set_colour(c_white)
draw_set_alpha (1)
