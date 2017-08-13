/// @desc Process tickerLine

if is_array(tickerLine) 
if tickerLine[l.visible] {
	if counter mod tickerLine[l.period] = 0 {
		if tickerLine[l.currentlength] < tickerLine[l.length]
			tickerLine[l.currentlength]++
		show_debug_message(" tickerLine = " + string(tickerLine[l.currentlength]))
	}
	tickerLine[l.currenttext] = string_copy(tickerLine[l.text], 1, tickerLine[l.currentlength])
}
