/// @desc Set new text to a tickerLine
/// @arg text string
/// @arg width of a line

// of ob_gui

tickerLine = []
tickerLine[l.text] = argument[0]
tickerLine[l.length] = string_length(tickerLine[l.text])
tickerLine[l.currentlength] = 0
tickerLine[l.currenttext] = ""
tickerLine[l.period] = 2
tickerLine[l.visible] = true
tickerLine[l.width] = argument[1]
