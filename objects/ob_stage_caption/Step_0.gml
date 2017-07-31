/// @desc 
if sc_timeout_is_started(timeOut)
if sc_timeout_over(timeOut) {
	sc_transition_start(sc_action_goto_room, room_next(room))
}
