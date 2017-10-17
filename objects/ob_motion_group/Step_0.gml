event_inherited()
/// @desc Move childs and motionLayer

/// Move childs
for (var i=0; i<array_length_1d(childObjects); i++)
if instance_exists(childObjects[i]) {
	childObjects[i].x = childObjects[i]._oX + (x - _oX)
	childObjects[i].y = childObjects[i]._oY + (y - _oY)
}
	
/// Move motionLayer
layer_x(motionLayer, x - _oX)
layer_y(motionLayer, y - _oY)

