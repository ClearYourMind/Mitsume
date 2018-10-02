event_inherited()
/// @desc Move childs and motionLayer

var dX = x - _oX
var dY = y - _oY

layer_x(layerTiles, dX)
layer_y(layerTiles, dY)

for (var i=0; i<childCount; i++)
if instance_exists(childObjects[i]) {
	childObjects[i].x = childObjects[i]._oX + dX
	childObjects[i].y = childObjects[i]._oY + dY
}