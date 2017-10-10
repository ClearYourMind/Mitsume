/// @desc Add element in array
/// @arg pos [x y]
/// @arg [color default=c_white]
// of ob_gui

var _pos = argument[0]
var _color = c_white
if argument_count > 1
	_color = argument[1]
	
if is_array(tickerLine)
if tickerLine[l.visible] and (tickerLine[l.linecount] > 0) {
	var _lines  = tickerLine[l.textlines]
	for (var i=0; i<tickerLine[l.currentline]; i++) {
		sc_gui_add_text_element(_lines[i], _pos, -1, _color)
		_pos[1] += 8;
	}
	sc_gui_add_text_element(tickerLine[l.currenttext],
						    _pos,
						    tickerLine[l.width],
						    _color
						   )
}
