/// @desc

if object_exists(hiddenObject)
	instance_create_depth(x, y, depths.general, hiddenObject)

if is_array(hiddenInstances)
	for (var i=0; i<array_length_1d(hiddenInstances); i++)
		instance_activate_object(hiddenInstances[i])

