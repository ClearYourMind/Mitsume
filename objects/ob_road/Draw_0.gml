/// @desc
var ii
for (var i=-1; i<3; i++) {
	draw_sprite(sprite_index, 0, (x*dx[0]) mod 200+i*200, y)
	draw_sprite(sprite_index, 1, (x*dx[1]) mod 200+i*200, y)
	draw_sprite(sprite_index, 2, (x*dx[2]) mod 200+i*200, y)
}
