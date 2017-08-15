event_inherited()
/// @desc

if enabled {
	var _pos = [pos[0]+1, pos[1]+1]
	sc_gui_add_tickerline(_pos, c_black)
	sc_gui_add_tickerline(pos)
}

//switch mode {
//case demo.controls:
//	break
//}
