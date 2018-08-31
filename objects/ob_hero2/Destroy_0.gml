/// @desc Destroy weapon

for (var i=0; i<array_height_2d(weaponList); i++)
if instance_exists(weaponList[i, 0])
	instance_destroy(weaponList[i, 0])
