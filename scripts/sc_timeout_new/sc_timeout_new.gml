///@desc Returns id of new timer
///@arg Time in seconds
///@arg Cicled or not


// returns array [current_time, is_cicled, is _started, initial_time]
// timeout starts after calling sc_timeout_over
if argument_count > 1
	return [0, argument[1], false, argument[0]]
else
	return [0, false,		false, argument[0]]
