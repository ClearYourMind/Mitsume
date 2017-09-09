/// @desc

for (var _y=0; _y < tileCountY; _y++)
for (var _x=0; _x < tileCountX; _x++) {
	draw_tile(tileSet, tiles[_x, _y], 0, _x*16+x, _y*16+y)
}

exit

draw_set_alpha(0.75)
draw_rectangle(x-w1, y-h1, x+w2, y+h2, false)
draw_set_alpha(1)
