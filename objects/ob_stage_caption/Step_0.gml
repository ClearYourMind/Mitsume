/// @desc 
if sc_timeout_is_started(timeOut)
if sc_timeout_over(timeOut) {

	sc_transition_start(action, room_next(room))
}

// Activate hero before performing transition action
if ob_transition_master.performing
if heroExists {
	instance_activate_object(hero)
	for (var i=0; i<array_height_2d(hero.weaponList); i++)
		instance_activate_object(hero.weaponList[i, 0])
	instance_activate_object(hero.guiObject)

}
