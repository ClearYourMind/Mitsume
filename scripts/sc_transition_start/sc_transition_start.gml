///@desc Perform transition through fade out-in
///@arg action script between fadings
///@arg argument for action

with ob_transition_master {
	action = argument[0]
	if argument_count>1
		arg = argument[1]
	event_perform(ev_other, ev_user0)
}
