event_inherited()
/// @desc Update elements

sc_gui_add_rect_element([0, -64], [view_w, 64], 0, 0.8)

var pos = menuPos
var _x = 0 
var _item = []

for (var i=-2; i<=2; i++) {
	pos = menuPos + i
	if pos < 0
		pos += menuCount
	if pos >= menuCount
		pos -= menuCount
	_x = view_w*0.5 + menuInterval*i + menuX
	_item = menu[pos]
	sc_gui_add_sprite_element(sp_gui_frame_sq, 0, [_x, -32])
	sc_gui_add_text_element(_item[item.name] , [_x-string_width(_item[item.name])*0.5 , -56])	
	sc_gui_add_text_element(string(pos), [_x - string_width(string(pos))*0.5, -8])	
}

_x = view_w - 24
if not visible_1
	sc_gui_add_sprite_element(sp_menu_arrow, 2, [_x, -4])
