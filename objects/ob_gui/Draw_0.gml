/// @desc Draw elements

/// draw_rectangle
var _y = view_y+view_h-20
draw_set_colour(c_black)
draw_set_alpha(0.8)
draw_rectangle(view_x, _y, view_x+view_w, _y+20, false)
draw_set_alpha(1)

for (var i=0; i<elementCount; i++) {
	var elem = element[i]
	var elemPos = elem[el.pos]
	draw_sprite(elem[el.sprite], elem[el.index], view_x + elemPos[0], _y + elemPos[1])
}
