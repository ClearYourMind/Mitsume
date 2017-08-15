/// @desc 
if sc_timeout_is_started(timeOut)
if sc_timeout_over(timeOut) {
	sc_transition_start(action, room_next(room))
}
