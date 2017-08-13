/// @desc Add element in array
/// @arg pos [x y]
// of ob_gui

if is_array(tickerLine)
if tickerLine[l.visible] and (tickerLine[l.currenttext] != "")
	sc_gui_add_text_element(tickerLine[l.currenttext], argument0)

