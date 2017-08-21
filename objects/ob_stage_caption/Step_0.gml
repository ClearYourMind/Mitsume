/// @desc 
if sc_timeout_is_started(timeOut)
if sc_timeout_over(timeOut) {

	sc_transition_start(action, room_next(room))
}

// Activate hero before performing transition action
if ob_transition_master.performing
if heroExists {
	instance_activate_object(hero)
	instance_activate_object(hero.guiObject)

}
