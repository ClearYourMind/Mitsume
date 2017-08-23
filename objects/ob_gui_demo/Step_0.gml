event_inherited()
/// @desc

oX = view_x
oY = view_y

if keyboard_check_pressed(vk_add) {
	if not enabled
		enabled = true
	else {
		enabled = false
		if mode < demo.lastvalue-1
			mode++
	}
	event_perform(ev_other, ev_user1)
//	show_debug_message("SECRET KEY USED! mode = "+string(mode))
}

sc_gui_update(id)
