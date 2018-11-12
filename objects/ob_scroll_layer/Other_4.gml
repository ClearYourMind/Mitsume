/// @desc

layerId = layer_get_id(layerName)
if layerId < 0 show_message("Layer not found")
layerMap = layer_tilemap_get_id(layerId)
if layerMap < 0 show_message("Wrong layer")
