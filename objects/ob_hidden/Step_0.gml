/// @desc

if is_array(hiddenInstances)
	for (var i=0; i<array_length_1d(hiddenInstances); i++)
		instance_deactivate_object(hiddenInstances[i])
