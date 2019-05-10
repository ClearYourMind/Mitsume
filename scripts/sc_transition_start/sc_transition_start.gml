///@desc Perform transition through fade out-in
///@arg action_array [0..2]
///@arg arguments_array [0..2]

var arg0 = []
var arg1 = []

// no arguments - goto next roon
if argument_count = 0 {
	with ob_transition_master {
		action_on_start       = noone
		action_on_room_change = sc_action_goto_room
		action_on_finish      = noone
		arg_on_start       = 0
		arg_on_room_change = room_next(room)
		arg_on_finish      = 0
	}
	with ob_transition_master 
		event_perform(ev_other, ev_user0) // start transition
	return
}

if argument_count>0 arg0 = argument[0]
if argument_count>1 arg1 = argument[1]


if array_length_1d(arg0) > 0
if script_exists(arg0[0]) {
	ob_transition_master.action_on_start  = arg0[0]
	if array_length_1d(arg1) > 0
		ob_transition_master.arg_on_start = arg1[0]
}
if array_length_1d(arg0) > 1
if script_exists(arg0[1]) {
	ob_transition_master.action_on_room_change  = arg0[1]
	if array_length_1d(arg1) > 1
		ob_transition_master.arg_on_room_change = arg1[1]
}
if array_length_1d(arg0) > 2
if script_exists(arg0[2]) {
	ob_transition_master.action_on_finish  = arg0[2]
	if array_length_1d(arg1) > 2
		ob_transition_master.arg_on_finish = arg1[2]
}

with ob_transition_master 
	event_perform(ev_other, ev_user0) // start transition
