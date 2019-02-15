/// @desc
var ii
for (var i=-1; i<3; i++) {
	draw_sprite(sp_road, 1, (x*dx[1]) mod 200+i*200, y)
	draw_sprite(sp_road, 2, (x*dx[2]) mod 200+i*200, y)
}

draw_sprite(sp_safehouse, 0, (x*dx[0]) mod 600, y)
draw_sprite(sp_safehouse, 0, (x*dx[0]) mod 600+600, y)
