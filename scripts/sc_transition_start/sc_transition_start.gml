///@desc Perform transition through fade out-in
///@arg action script between fadings

with ob_transition_master {
	action = argument0
	event_perform(ev_other, ev_user0)
}
