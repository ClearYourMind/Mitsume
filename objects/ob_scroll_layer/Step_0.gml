/// @desc

moveSpeed = 1.5 //cos(counter*0.005)*3
x = (x+moveSpeed) mod 100000

var _x, _w, r, tt;

var _tShift = false
if tileShift {
	_xOffset = xOffset
	xOffset = (x*speedFactor) mod elementW
	_tShift = sign(moveSpeed)*(xOffset-_xOffset) < 0
	layer_x(layerId, xOffset)
} else {
	layer_x(layerId, (x*speedFactor) mod elementW - elementW)
}

var i,j;
if _tShift {
	//_w = view_w div elementW + 2
	if moveSpeed<0 {
		for (j=0; j<tilesYCount; j++)
			tt[j] = tilemap_get(layerMap, 0, tilesY+j)
		for (i=0; i<tilesXCount-1; i++)
		for (j=0; j<tilesYCount; j++)
			tilemap_set(layerMap, tilemap_get(layerMap, i+1, tilesY+j), i, tilesY+j)
		for (j=0; j<tilesYCount; j++)
			tilemap_set(layerMap, tt[j], tilesXCount-1, tilesY+j)
	} else {
		for (j=0; j<tilesYCount; j++)
			tt[j] = tilemap_get(layerMap, tilesXCount-1, tilesY+j)
		for (i=tilesXCount; i>0; i--) 
		for (j=0; j<tilesYCount; j++)
			tilemap_set(layerMap, tilemap_get(layerMap, i-1, tilesY+j), i, tilesY+j)
		for (j=0; j<tilesYCount; j++)
			tilemap_set(layerMap, tt[j], 0, tilesY+j)
	}
}


