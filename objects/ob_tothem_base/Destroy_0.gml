/// @desc Destroy pieces

for (var i=0; i<maxpiece; i++)
if instance_exists(pieces[i])
	instance_destroy(pieces[i])

pieces = 0;
