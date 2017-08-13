/// @desc Set new text to a tickerLine
/// @arg text string

// of ob_gui

tickerLine = []
tickerLine[l.text] = argument0
tickerLine[l.length] = string_length(tickerLine[l.text])
tickerLine[l.currentlength] = 0
tickerLine[l.currenttext] = ""
tickerLine[l.period] = 2
tickerLine[l.visible] = true


