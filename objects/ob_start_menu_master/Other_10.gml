/// @desc Update elements

elementCount = 0

switch varMode {
case md.start:
	if varPos = 0 {
		if varVisible
			sc_gui_add_text_element("START GAME", [85, 100])
	} else
		sc_gui_add_text_element("START GAME", [85, 100])
		
	if varPos = 1 {
		if varVisible
			sc_gui_add_text_element("CONTROLS", [85, 112])
	} else
		sc_gui_add_text_element("CONTROLS", [85, 112])

	break
case md.controls:
	sc_gui_add_text_element("PRESS BUTTON FOR:", [65, 85])
	if varVisible
		sc_gui_add_text_element(ob_control.cfgKeyStrs[varPos], [105, 112])
}
