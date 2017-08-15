/// @desc Init mode

switch mode {
case demo.none:
	caption = "DEMO mode initiated"
	pos = [32, 32]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break

case demo.controls0:
	caption = "* Control device you are using is detected after first key pressed ..."
	pos = [16, view_h-40]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break
case demo.controls1:
	caption = "... You can fully customize control keys layout for keyboard ..."
	pos = [16, view_h-40]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break
case demo.controls2:
	caption = "... D-Pad as well as Analog Stick are used for movements on gamepad..."
	pos = [16, view_h-40]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break
case demo.controls3:
	caption = "... changes you made are saved automatically."
	pos = [16, view_h-40]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break
case demo.arrowjump:
	caption = "* You can make a higher jump with the Condor."
	pos = [16, view_h-40]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break
case demo.killingarrow:
	caption = "* Added Supercondor."
	pos = [16, view_h-40]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break

}

