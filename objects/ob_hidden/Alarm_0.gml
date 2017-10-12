/// @desc Deactivate hidden instances

if is_array(hiddenInstances) {
	for (var i=0; i<array_length_1d(hiddenInstances); i++)
	if instance_exists(hiddenInstances[i])
		instance_deactivate_object(hiddenInstances[i])

}

alarm_set(0, deactivateTime)
