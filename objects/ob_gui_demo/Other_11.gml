/// @desc Init mode

switch mode {
case demo.none:
	caption = "DEMO mode initiated"
	pos = [32, 32]
	sc_gui_set_tickerline(caption, view_w * 0.75)
	break

case demo.controls0:
	caption = "* Control device you are using is detected after first key pressed ..."
//	pos = [16, view_h-40]
	pos = [view_w*0.35, view_h*0.5]
	sc_gui_set_tickerline(caption, view_w * 0.65)
	break
case demo.controls1:
	caption = "... You can fully customize control keys layout for keyboard ..."
	sc_gui_set_tickerline(caption, view_w * 0.65)
	break
case demo.controls2:
	caption = "... D-Pad as well as Analog Stick are used for movements on gamepad ..."
	sc_gui_set_tickerline(caption, view_w * 0.65)
	break
case demo.controls3:
	caption = "... changes you made are saved automatically."
	sc_gui_set_tickerline(caption, view_w * 0.65)
	break
case demo.stamina1:
	caption = "* Added stamina depletion ..."
	sc_gui_set_tickerline(caption, view_w * 0.65)
	break
case demo.stamina2:
	caption = "... now you cannot shoot an infinite rain of shots."
	sc_gui_set_tickerline(caption, view_w * 0.65)
	break
case demo.arrowjump:
	caption = "* You can make a higher jump with the Condor."
	sc_gui_set_tickerline(caption, view_w * 0.65)
	break
case demo.killingarrow:
	caption = "* Added Supercondor."
	sc_gui_set_tickerline(caption, view_w * 0.65)
	break

}

