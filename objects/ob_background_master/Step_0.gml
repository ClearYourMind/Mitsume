/// @desc

// move background
layer_x(backLayer, view_x*backLayerFactor)
layer_y(backLayer, view_y*backLayerFactor)
if shadowLayer != -1 {
	layer_x(shadowLayer, (view_x+view_w*0.5) * (1-(shW/16))  )
}


