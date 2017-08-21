/// @desc Draw sparkles

if not ds_exists(sparkle, ds_type_list)
	exit

var _star = []
var _visible = false
for (var i=0; i<ds_list_size(sparkle); i++) {
	_star = sparkle[| i]
	if _star[sh.phase] = 0
		_visible = (counter mod 2) == 0
	if _star[sh.phase] = 1
		_visible = (counter mod 4) == 0
	if _visible 
		draw_sprite(sp_sparkle, image_index, _star[sh.x], _star[sh.y])
}
