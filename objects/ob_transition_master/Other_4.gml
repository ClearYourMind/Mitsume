/// @desc After room change

if script_exists(action_on_finish) {
	script_execute(action_on_finish, arg_on_finish)
	show_debug_message("Action " + script_get_name(action_on_finish) + " (arg = " + string(arg_on_finish) + ") performed")
}
