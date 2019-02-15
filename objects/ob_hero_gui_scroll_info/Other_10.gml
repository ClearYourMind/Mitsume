event_inherited()
/// @desc Update elements

var _x = 0
sc_gui_add_rect_element([0, -104], [view_w, 103], 0, 0.8)

_x = view_w - 24
if not visible_1
	sc_gui_add_sprite_element(sp_menu_arrow, 2, [_x, -4])
