/// @desc 
if sc_timeout_is_started(timeOut)
if sc_timeout_over(timeOut) {
	sc_transition_start()
}

// Activate hero before performing transition action
if ob_transition_master.performing
if heroExists {
	instance_activate_object(ob_heroparent)
	//instance_activate_object(ob_heroparent.guiObject)
}

