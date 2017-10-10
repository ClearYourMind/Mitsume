/// @desc Set new text to a tickerLine
/// @arg text string
/// @arg width of a line

// of ob_gui

tickerLine = []
tickerLine[l.width] = view_w * 0.9
if argument_count > 1
	tickerLine[l.width] = argument[1]
	
var _lines = [""]
var _text = argument[0]
var _linecount = floor(string_width(_text) / string_width_ext(_text, 8, tickerLine[l.width])) + 1
var _s = ""
for (var i=0; i<_linecount; i++) {
	if _text != ""
	repeat string_count(" ", _text) + 1 {
		var _pos = string_pos(" ", _text)
		if _pos > 0 {
			_s = string_copy(_text, 1, _pos)
			_text = string_delete(_text, 1, _pos)
		} else {
			_s = _text	
			_text = ""
		}
			
		if (string_width(_lines[i]) + string_width(_s)) <= tickerLine[l.width]
			_lines[i] += _s
		else {
			_lines[i+1] = _s
			break;
		}
	}
}

tickerLine[l.textlines] = _lines
tickerLine[l.linecount] = array_length_1d(_lines)
tickerLine[l.currentlength] = 0
tickerLine[l.currenttext] = ""
tickerLine[l.currentline] = 0
tickerLine[l.period] = 2
tickerLine[l.visible] = true
