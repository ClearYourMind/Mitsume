/// @desc 

oX = view_x
oY = view_y+view_h-20

with ob_shake_master
	other.oY += amount-1


//Process tickerLine
if is_array(tickerLine) 
if tickerLine[l.visible] {
	if counter mod tickerLine[l.period] = 0 {
		var lines = tickerLine[l.textlines]
		if tickerLine[l.currentlength] < string_length(lines[tickerLine[l.currentline]])
			tickerLine[l.currentlength]++
		else
		if tickerLine[l.currentline] < tickerLine[l.linecount] - 1 {
			tickerLine[l.currentlength] = 0
			tickerLine[l.currentline]++
		}
		tickerLine[l.currenttext] =
			string_copy(lines[tickerLine[l.currentline]], 1, tickerLine[l.currentlength])
		
		show_debug_message(" tickerLine = " + string(tickerLine[l.currentlength]))
	}
}
