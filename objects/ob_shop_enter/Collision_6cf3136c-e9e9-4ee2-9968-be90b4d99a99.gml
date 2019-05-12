///@desc Go to next room

sc_transition_start([sc_action_set_room_persistent, sc_action_goto_room, sc_action_enter_shop], [true, rm_shop])

with ob_hidden
	event_perform(ev_other, ev_user1) // deactivate hidden instances

