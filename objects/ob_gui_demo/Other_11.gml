/// @desc Init mode

var _w = view_w * 0.85

switch mode {
case 0:
	caption = "DEMO mode initiated"
	pos = [45, 32]
	sc_gui_set_tickerline(caption, _w)
	break

case 1:
	caption = "* Mob added: tothem column."
	sc_gui_set_tickerline(caption, _w)
	break
case 2:
	caption = "It shoots ordinary shots..."
	sc_gui_set_tickerline(caption, _w)
	break
case 3:
	caption = "...invulnerable when forming..."
	sc_gui_set_tickerline(caption, _w)
	break
case 4:
	caption =  "...even Condor, that now kills\n"
	caption += "while being launched, cannot \n"
	caption += "hurt it!"
	sc_gui_set_tickerline(caption, _w)
	break
case 5:
	caption = "* You can upgrade hero's \n"
	caption += "characteristics in Shop, buying\n"
	caption += "item STRENGTH."
	sc_gui_set_tickerline(caption, _w)
	break
case 6:
	caption = "* HEALTH now has limited number of uses."
	sc_gui_set_tickerline(caption, _w)
	break
case 7:
	caption = "* Mob added: skeleton."
	sc_gui_set_tickerline(caption, _w)
	break
case 8:
	caption = "It shoots pointed shots..."
	sc_gui_set_tickerline(caption, _w)
	break
case 9:
	caption =  "...shot count equals to the\n"
	caption += "number of your hits..."
	sc_gui_set_tickerline(caption, _w)
	break
case 10:
	caption = "...explodes when you are too close."
	sc_gui_set_tickerline(caption, _w)
	break

}

