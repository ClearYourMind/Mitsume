/// @desc Update elements

elementCount = 0

switch varMode {
case md.start:
	if varPos = 0 {
		if varVisible
			sc_gui_add_text_element("START GAME", [view_w*0.5-35, 100])
	} else
		sc_gui_add_text_element("START GAME", [view_w*0.5-35, 100])
		
	if varPos = 1 {
		if varVisible
			sc_gui_add_text_element("CONTROLS", [view_w*0.5-35, 112])
	} else
		sc_gui_add_text_element("CONTROLS", [view_w*0.5-35, 112])

	break
case md.controls:
	sc_gui_add_text_element("PRESS BUTTON FOR:", [view_w*0.5-60, 85])
	if varVisible
		sc_gui_add_text_element(ob_control.cfgKeyStrs[varPos], [view_w*0.5-25, 112])
}
