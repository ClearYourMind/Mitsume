/// @desc Init layer

layerTiles = layer_get_id("MotionTiles")
childObjects = layer_get_all_elements(layer_get_id("MotionInstances"))
childCount = array_length_1d(childObjects)
for (var i=0; i<childCount; i++) {
	childObjects[i] = layer_instance_get_instance(childObjects[i])
	childObjects[i]._oX = childObjects[i].x
	childObjects[i]._oY = childObjects[i].y
}
