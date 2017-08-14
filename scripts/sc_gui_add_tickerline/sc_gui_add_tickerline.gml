/// @desc Add element in array
/// @arg pos [x y]
/// @arg [color default=c_white]
// of ob_gui

var _color = c_white
if argument_count > 1
	_color = argument[1]
	
if is_array(tickerLine)
if tickerLine[l.visible] and (tickerLine[l.currenttext] != "")
	sc_gui_add_text_element(tickerLine[l.currenttext],
						    argument[0],
						    tickerLine[l.width],
						    _color
						   )

