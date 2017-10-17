/// @desc Init layer

motionLayer = layer_get_id("MotionTiles")

for (var i=0; i<array_length_1d(childObjects); i++) {
	childObjects[i]._oX = childObjects[i].x
	childObjects[i]._oY = childObjects[i].y
}
