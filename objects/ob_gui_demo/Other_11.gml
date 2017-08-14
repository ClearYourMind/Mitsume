/// @desc Init mode

switch mode {
case demo.none:
	caption = "DEMO mode initiated"
	pos = [32, 32]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break
case demo.controls1:
	caption = "* You can fully customize control keys layout for keyboard ..."
	pos = [16, view_h-40]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break
case demo.controls2:
	caption = "... for gamepad only 3 buttons available for customization"
	pos = [16, view_h-40]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break
}

