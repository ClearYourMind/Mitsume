/// @desc Update elements

elementCount = 0

switch varMode {
case md.start:
	if varPos = 0 {
		if varVisible
			sc_gui_add_text_element("START GAME", [view_w*0.5-35, view_h*0.5 - 10])
	} else
		sc_gui_add_text_element("START GAME", [view_w*0.5-35, view_h*0.5 - 10])
		
	if varPos = 1 {
		if varVisible
			sc_gui_add_text_element("CONTROLS", [view_w*0.5-35, view_h*0.5 + 2])
	} else
		sc_gui_add_text_element("CONTROLS", [view_w*0.5-35, view_h*0.5 + 2])

	break
case md.controls:
	sc_gui_add_text_element("PRESS BUTTON FOR:", [view_w*0.5-60, 65])
	if varVisible
		sc_gui_add_text_element(ob_control.cfgKeyStrs[varPos], [view_w*0.5-25, 100])
}
