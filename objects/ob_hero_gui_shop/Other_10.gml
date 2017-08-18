event_inherited()
/// @desc Update elements

sc_gui_add_rect_element([0, -104], [view_w, 103], 0, 0.8)
sc_gui_add_tickerline([16, -96])
var pos = menuPos
var _x = 0 
var _y = -40
var _item = []
var _s = ""
for (var i=-2; i<=2; i++) {
	pos = menuPos + i
	if pos < 0
		pos += menuCount
	if pos >= menuCount
		pos -= menuCount
	_x = view_w*0.5 + menuInterval*i + menuX
	_item = menu[pos]
	
	if pos = menuPos {
		if visible_1
			sc_gui_add_sprite_element(sp_gui_frame_sq, 0, [_x, _y])
	} else
		sc_gui_add_sprite_element(sp_gui_frame_sq, 0, [_x, _y])
	
	_s = _item[item.name]
	sc_gui_add_text_element(_s , [_x-string_width(_s)*0.5 , _y-24])	
	
	// item sprite
	if not _item[item.soldout] {
		sc_gui_add_sprite_element(sp_gui_shop, _item[item.sprite], [_x, _y])
		// level gauge
		if _item[item.level] > 0 {
			var _xx = _x-24
			sc_gui_add_sprite_element(sp_gui_health, 0, [_xx, _y+12])
			repeat _item[item.level] {
				_xx+=8
				sc_gui_add_sprite_element(sp_gui_health, 1, [_xx, _y+12])
			}
			repeat (4 - _item[item.level]) {      
				_xx+=8
				sc_gui_add_sprite_element(sp_gui_health, 2, [_xx, _y+12])
			}
			_xx+=8
			sc_gui_add_sprite_element(sp_gui_health, 3, [_xx, _y+12])
		}
	} else
		sc_gui_add_sprite_element(sp_gui_shop, 7, [_x, _y])
	
	// item price
	if not (_item[item.type] = itemtype.exitshop) {
		if not _item[item.soldout]
			_s = string(_item[item.price])
		else
			_s = "SOLD OUT"
	}
	sc_gui_add_text_element(_s, [_x - string_width(_s)*0.5, _y+30])
	
}

_x = view_w - 24
if not visible_1
	sc_gui_add_sprite_element(sp_menu_arrow, 2, [_x, -4])
