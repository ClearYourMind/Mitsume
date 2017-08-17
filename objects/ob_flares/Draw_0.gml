/// @desc Draw sparkles

if not ds_exists(sparkle, ds_type_list)
	exit

var _star = []
var _visible = (counter mod 4) == 0
for (var i=0; i<ds_list_size(sparkle); i++) {
	_star = sparkle[| i]
	if _star[sh.phase] = 1
		_visible = not _visible
	if _visible 
		draw_sprite(sp_sparkle, image_index, _star[sh.x], _star[sh.y])
}
